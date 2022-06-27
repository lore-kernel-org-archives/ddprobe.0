Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D99F7A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656311212;
	h=To:Subject:From:Message-Id:Date;
	bh=7lqNg40/rIu4L019c6r03e3255JGQuppAkPfg/uov7s=;
	b=Q38aAtDxinYVAQuWq1S22ifA1j+DFPK2nk1Q9j3gvKnyww+eVKT771HFxwvviRe3
	ILpqvS/6tJUHXI+dFAy44verF9dMOcCGZaDyL6H619mjm5rwsEyVTb7mswsRve6b95k
	39Y6WxAZjCrfULewAuEQWvOeN3SBhynDOX77cz0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656311212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7lqNg40/rIu4L019c6r03e3255JGQuppAkPfg/uov7s=;
	b=VWL5uMnUGlbLXt4mAOmCYefoKw5EkcCx93JVoc0+8jXO4y1htt7IXMi/MnqkXz2g
	hlETnDIGkRXKYecwMWGM78hgPhR7j2tFW2tgueCKLYlg100wuDR0sO/5yngwAoHCN9a
	Qd/+SRvfKvhgZe5slk5vW/agSME52ZipLzXgbREU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3d768f2-77008ba5-2207-4ef8-964c-573edcf09c51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fed94761012c115a264e30e861ce9d089fc5c312c60b65cdf16e584af7c61823
Date: Mon, 27 Jun 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656311212

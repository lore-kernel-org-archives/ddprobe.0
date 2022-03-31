Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E097B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 07:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648712398;
	h=To:Subject:From:Message-Id:Date;
	bh=20gTAKxOvzfSwhlWgNG6E76enaKNPyVXsRyiLWVBikM=;
	b=efm4n9NBB3zfB3iXNrf4cVpS54AKpeiq9rEAPJblQzcUJZLPZ6d7ugndm5pz2tND
	yfE8ZnCvVSRmhlHowxC4ivx64C3ZYR5053Y5NinieMKzz80YIRvFeVFjyoR3D3lPmf/
	Ftom1ZQS0f9wOtgXuxgO+Q2HttHVPGHQ5Sojqh3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648712398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=20gTAKxOvzfSwhlWgNG6E76enaKNPyVXsRyiLWVBikM=;
	b=N+/gbXqnHgV+ESxQxY5wkPUt2KNutFJ5RhaQMaHo7HWVAePgY+PktrVrNj06yeOT
	CnCAt/VbyUjP8DJedt3iSsfdWpTe3axOMLF1quRwZzzZJ2YAnGtkijl8VcmoOu7LnQl
	+FYY2E6/ch2vN1t4N+t5TkKkqC8Dnii0hnpVcDaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdeeab5d2-585b9381-4d80-4d7e-86de-1441078cb171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4abafc18a540ddecae659bc4dc8b918dfedfb13b05740b83b954401b2d1c553
Date: Thu, 31 Mar 2022 07:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648712398

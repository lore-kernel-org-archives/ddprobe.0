Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F0D3D6E
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659138052;
	h=To:Subject:From:Message-Id:Date;
	bh=UNAePug82XqSzRofVZ/semOyIT4T1ZsXkoFPjnsJsHk=;
	b=MtABF/u0/KWEhx5ENoyg9YsEbVEIYnquuuYsiERCmPuXW/9AgfFsNzNvg4ze3B/t
	JG7/7rmyp9aNexOYiYS6uYs98D8hSnf4JfeAtJQPMSEQGPRc3x911RB35mOj3ZPQ5QB
	XfdN3pjqtulKelg7QJ0Kwlfl/AbA3vx3lIWCsDWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659138052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UNAePug82XqSzRofVZ/semOyIT4T1ZsXkoFPjnsJsHk=;
	b=Q6OiutfFqX1/8RlP5uzrXe4PYOqXGyymx+npPo+0hkNfWbVvlkYevx4+lx11G+7U
	jQfvIkMCGyuBYx6xooMzG9FduXpgupUjNwYX1Teomq34rxbFX7VljjtuuRD60QDy2mM
	af5UcFzk3cYj43XJrxf9czhD0S5egSrJ9dSI2Jr0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824c5591b2-698af537-b4dd-4fa2-a45d-61584268e628-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0aec1141a412a29a488143d21717e6a15b820a9352b7ce955abf4370503a0f90
Date: Fri, 29 Jul 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659138052

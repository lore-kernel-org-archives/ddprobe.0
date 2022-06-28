Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41623C05
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656433012;
	h=To:Subject:From:Message-Id:Date;
	bh=Gj2aA1DIbLxsJazT6IMDiyxUnp9TYApdjAQy443xfuw=;
	b=JG/08ruZhvbHpPAzSRhvh9X8U2YEffGqr21dEest8/O+QWQPf0/4tyzX629s7jwc
	MrqQyIdAwvw3ZJCB9eeI2D9PAus+9WZGuPms5dcmq69gJ/v+8Kd7RNFmY1MDx4sMKH3
	nmkopsmx0PaGTdfb9oURJPdgM6RPoj6iKCaS1c7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656433012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gj2aA1DIbLxsJazT6IMDiyxUnp9TYApdjAQy443xfuw=;
	b=AJX/n3cwhNMG1OVrtvyhwpu25A6aNHuGZAcsT3av9J5PHcbEi2NspNMDwmLyM/tt
	uBM97fDx0PC/3CGrAv9EQGGYEzEVqlWC3i9f6y6fXEjZ+nh6KBsocVFCkAUtkJcr/8I
	tXo+U8ZeoTr/0NS05fhdl8AM27BsOUlcPRG/BEVk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab19ee63-d1144c28-cb0b-47c0-8042-59e7f6b3e139-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b0ba3779930fe55d366d9e0c701b59ab0eeaddc4ff495cbcfb8b796b8da6f4d
Date: Tue, 28 Jun 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656433012

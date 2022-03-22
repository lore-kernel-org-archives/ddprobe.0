Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1625802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647928585;
	h=To:Subject:From:Message-Id:Date;
	bh=5ZFNJcSULL59lRAouqatA6JAYznKZ3q11eXd0fH3RQU=;
	b=amvToH60MEQCWfJWihw5Y7RTSIWm4pPr8k9P8etomTaymj6F0gkNL8AoJ3DA1kmb
	iWYUMAsaZd3BEaoA0u3iAjdN2PniYlO8KEefmMW5lYqcuZ7dMzFyo2tFRFYpKqhJn+1
	x0KPwyrN4whvDpc7v9fpcTZbvx9ysaIDPkCGSqIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647928585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ZFNJcSULL59lRAouqatA6JAYznKZ3q11eXd0fH3RQU=;
	b=Cq2Nkid9E6e2xetMyvuK/xa6Q7u+G25i37/wKaBm2w2TpHd8yBGHlTwguqILLzi4
	9pEvboCIqQRsv2J8MpAb2UaUD9G8oHB91VTpzOjr7BMahz8EpxSvLfyua0mkIV5KIXn
	G3KmPbk5s3V9nTLXRotB3JvZQU/h3sj3VQD+Yhbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb032aa39-53ac580b-58f7-4fdf-b586-4032dbb61d75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a32942e3b4eff482d492a56d1c6dc4a5534ddcdef738a277cf6f57f886f3a034
Date: Tue, 22 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647928584

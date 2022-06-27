Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA2F20F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656313012;
	h=To:Subject:From:Message-Id:Date;
	bh=X+cmDPnVIKf83oiFGpJF8MG9CKjSlcSYgb9EOT0rCf0=;
	b=O9ML08ZWDUmSS+26uOCnEP4i3fwwGiNG3ad7ZMWRP3TNIAYzGI/uRz2jhOXhimen
	Fcv7KLaPBFUPAms/fNBv4K/JCp925DCeqdNB+rVNCnw3YG+QcaQPr7gm5lKIC6LpC6S
	dFSxwL+SHDTb79TFKGFZsaIPj36pMREf9dINfANc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656313012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X+cmDPnVIKf83oiFGpJF8MG9CKjSlcSYgb9EOT0rCf0=;
	b=W+dlmP5Zmqu/uTkN2/qx8f+Nt6jjhtKQB+psMwxhu+ti/dR9tECITs/n5jOENxzj
	E9axOlOHUQOWbSMOGUCuAaZrsFPUcKaEPLbVL/7bKoHqrtjM2T1V89/9Wijb3ROIE8m
	j4y0AhcXyEadJrSy0faZ3Aim/Dwd+/lLd6IkaYhI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3f2e039-57c772db-4f84-4286-ba36-6a4177943b42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a9c2e257f5f7d21ac8cd029ddb4dc67b230cff0088e86ff2b9027746bbf30e2
Date: Mon, 27 Jun 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656313012

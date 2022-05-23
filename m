Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F348C3D7A
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 21:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653341219;
	h=To:Subject:From:Message-Id:Date;
	bh=Wy3mM/p/63LI952N8/bkDeeE/H9miAGBbknfAmYTWJ0=;
	b=Zvr8HSAhcdO1+rZ3FXP3XMipJ3tdy7RmU9WVx3YraTfQF7fMZPN5+rBMq3pKhfw5
	3GsWbRsw1cnjStOjLmKaWFCjk0NPFFMoBlL1a5jtfhR/sL1tA9nIJ/dMPuHstYK9WfK
	QY9kTTFu7R3CDvv1kSwo7768Pw8c182R+kt6aDzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653341219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wy3mM/p/63LI952N8/bkDeeE/H9miAGBbknfAmYTWJ0=;
	b=BajAUJFQVqlaJjGlN0pmVyK4tPMTOZ2RLDDYNa9pvIxo5yOxFVyXrFFdZiuZzN0X
	INcDEy9jSAQMATGZpIdLWNzEsGyzT2MBfaRZ6bMVAkbDl0HSMoaedgdoiQNuwhhdE0j
	nCiiHU82udNFRZ2OJfBR1HQcm/X1H2K8OZYVMMko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f2d0e9ce-2fec7687-a1cd-4362-b04c-eaa1d9932a35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ca457f76ed941d9db1e16e3a27cb10d709bc1d1c515aca13ccfd11a28fd1402
Date: Mon, 23 May 2022 21:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653341219

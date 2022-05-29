Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C03115A6
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 06:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653805199;
	h=To:Subject:From:Message-Id:Date;
	bh=a1obDoGpXNOxfA8nSOfcGWG9f3/uCrO0FDh09AA5xcQ=;
	b=FZjzVdivJahCb2XCvq0K4QcgPF8d1FQ4Avy20RpM90O0YoJrDpm+aN/hYLC9XFo8
	4Sta1Xba+eemYITs9h0tAkdHGwQ8YWn6OO+Yqu6UBputMCnGVlzgHwNgdB83K9+MUYM
	gr4IxtwqKMkN49mF4/iCu7CvT9LHDwR34Dr6XhA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653805199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a1obDoGpXNOxfA8nSOfcGWG9f3/uCrO0FDh09AA5xcQ=;
	b=bZ/IBjwvmJr8y1zJ5cexaJJ6LaQJXVd106wSZ27sXubQ3w5zC537kicJzoEtgSmc
	8b+HZH+hkUphxPaJa/+MfgPM3zZbYsFXZOOpg0a1A2I+JDf4CdMR9dlGMneDqtApmhZ
	pTuESeRit18my2uSIbJOpnO7LvnKmF4pNW9HZIoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810e78b033-280aad23-da13-4684-bf07-91d16d47a0e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a3afb13ec8a84ca5f819c11a80a2e9b64718d67db40faabe3bb1a02d0a1b35a
Date: Sun, 29 May 2022 06:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653805199

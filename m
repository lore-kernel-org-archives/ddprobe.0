Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154FF62A
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 00:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651798378;
	h=To:Subject:From:Message-Id:Date;
	bh=Vm+3eiCGk+e3ZXXXsmPlnXS80dAlJH/n3MS6U7p8k7k=;
	b=EQNpXW6/M1iUazW5YUikLoX1tCcNqLnDntuC7YctObRM0Eqcmdt0BjL7PCA5s5N1
	+f6BOpnDJn6X+zuC48Ccy7QejC/aRckdCmkkJmXJTdp79QC0m9kJWoNuH3/rIbToCpd
	nYFd+sgw/AsEOV+6JNlY+KoU3AE1DcdTVS0ZOxX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651798378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vm+3eiCGk+e3ZXXXsmPlnXS80dAlJH/n3MS6U7p8k7k=;
	b=SumgR9akGPVtc7XSBwwrMmDiovd/wQpoKI5hCNBs2bhAWqICoMeSnMmvfqOjAYIG
	MPs5WyjmZJyL2K27LUSL+Vy9fmoiUTRZFbZavrdTZtzJ78fAkakPDH6nrLVsJHT1fXv
	87o/Rl7oFCpR1D2TRz0lAjQp3WGz0LPe44CQMPMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018096db072d-323a86ff-db7b-46e6-8ff7-9c8998230c06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45e8e56deac8965fe38a4261e6108c5248ed4006dd76c6979461abc89ac28986
Date: Fri, 6 May 2022 00:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651798378

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A063E
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 12:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649422558;
	h=To:Subject:From:Message-Id:Date;
	bh=xdmfS9XNV+HlfV5NoR7/dU8R8og7vGEMchS8J6eAOkI=;
	b=Nl5Nl5pWA5O/fJ7gRNBJ47dU0bWVDgmtkw53banBxY9+/hDGFfjx5f5X3mZuJZri
	jupgaK1h7M82eiuOF0Oj90rl/wsEUiCY0AF9AIBWyaNLbA0Oe4RvE/NFjsQ3ap4Psrx
	FA8IBV4MSvpQr0qjf99nCjBaHLQTENbavBZOBXRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649422558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xdmfS9XNV+HlfV5NoR7/dU8R8og7vGEMchS8J6eAOkI=;
	b=Agq535rsuW3VOH5fEiAlXSQ4qscAK0ZL1jxvk1roHWwSsHexe1iRm3x2HyUXbf5u
	XHsInKZ7sIGWLaHU5zILT+L+JVYMWu2e1EhyQA2rt+I2/vIzG1x0IgHBTioz42gnxcj
	PVcMAQHw4hVscjD4KtI2k2D0JF/s0PiSdsJCdVBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180093ee42a-831b3839-5ec6-47f8-80bc-cbc3667be90e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c467248800b349cd2bff7f64805f8f9c4d6920cd9edffa67c2af3e94ce661cf6
Date: Fri, 8 Apr 2022 12:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649422558

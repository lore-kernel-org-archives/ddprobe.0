Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FC27C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 09:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649065978;
	h=To:Subject:From:Message-Id:Date;
	bh=nL4IjpuNF8+ds5dBDmKoNt6FrWrrn4ycXy+aGBSsBNc=;
	b=QRf2STdPOQBEx4vLsKRx8z7KWElBJn20Lhc2xruHsB1bANTKOnaffjE+WyvV4Tb3
	XLcx7Ohafo/YA3dwVL/C2sPwcvQGwX52jmDPkXsMjimyGkQ+LCNUZiiXcAjPxf/uee1
	j0zxTWtjwR9x3WvwFsqTOsjmH3Nct6DRwN3ga5n8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649065978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nL4IjpuNF8+ds5dBDmKoNt6FrWrrn4ycXy+aGBSsBNc=;
	b=S6C2iBVDaIanOCexgGAOOTEjjdUBOJBrQpAH9rB9FkmXrjoLIH3KwL86kUzKBAfg
	MXLpgLr8CK9NNwV9OZyXd42jRz3wWEWe0ai5vQAw7ihPtrzVj1dHpWddldUrA7cLvlT
	2eOEwCv3lzC+qtGq3E0mtphp7L83iE/aKBFYYbT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff3fdea51-04c0db22-d8e2-4ce5-82d8-965023f960d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42e78f012bd2a0543321a8c8a16f44ddd4cb82c80a2a80ab2b1447e892a12927
Date: Mon, 4 Apr 2022 09:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649065978

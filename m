Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DD32569
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645461985;
	h=To:Subject:From:Message-Id:Date;
	bh=SyC+uJRsyPdMsEORwjkBhGKd4LTs0O/wN9fiuus/XZU=;
	b=LDHXnYbL7TJ41uxHNF08Zo/WISvpLFl7oT5mnIt0+rLnG+UxTXAjALXm72acqF8j
	dQcaJIYe7atsZ2/YxFUv28vDVXlYU1vj+ZXxjwYdiAwWPMJrjgnwmG5X6iEszZYqD3g
	twR9xryInXPPciW8sXdiwuceotkKnv+yr4RzSBvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645461985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SyC+uJRsyPdMsEORwjkBhGKd4LTs0O/wN9fiuus/XZU=;
	b=QRo38rkaL2+Eppmrfmhd9vdQvtcux7oXyHcvxjazDTyr3RbVKcjYYG0PT68Jzfvb
	zOsOe4Bfusg8MSfuZTmE2Py8BSfcV98oTTIyDCBdh9fA+owgbQJl0/l/1hjzEuf16Gy
	J/k2snfJU5fO2Q2ghCyQ9b0QVlQolMXYKmEjfF20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d2d560c-e57fca31-629c-42d3-9233-ea37b5e444de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44ca8f1c4471710e16a81c8df385747e559125ab7605733abe5af2f1f8f9189f
Date: Mon, 21 Feb 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645461984

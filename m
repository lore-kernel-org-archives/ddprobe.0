Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088AF747E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 18:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655834519;
	h=To:Subject:From:Message-Id:Date;
	bh=EXfMx8ibSS/wO50kcgsl8AGRtIOXQ7bsbZrStXHrxkI=;
	b=L/bW/j5yOcemRbCuRfKXxfeXCGXFvlWcoL+5w6+7q99sGU6Xua4Ls+hqoCA0RnSy
	l1vV7iBHOsGpC/u3DGf2FH6ohFKCLEJqdJDpWr/3MC8X9QG52OzKsAKOhwuciNuG/qB
	uAU+e3KJEvbE+Y0XflUDlDOt+QSLJvgOa9xCb/yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655834519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EXfMx8ibSS/wO50kcgsl8AGRtIOXQ7bsbZrStXHrxkI=;
	b=YRbYn9p1ePw7FsLxnRg2g/fyXzmkNxI4lWHPUoKWMD15WLM+8sSRcKSYUt+8rAgK
	kMZ9Tp80KmrcDCjoujo7/Wb1cKJhC+R5o9FmHa8yKdwn0lKsJuR5ZHPwLXuXWiaZQNH
	U/mUICoPjucYjgJtVobwCjh+cXArksKrop2itePk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181876da6e6-3aa7e715-8b7a-4423-ac60-cb572f7e1b6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a661d780cb880f52e8d492b15e52d1487659167bf47c313b22ead3e2f315c6e2
Date: Tue, 21 Jun 2022 18:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655834519

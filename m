Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA05D4C8B
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658851252;
	h=To:Subject:From:Message-Id:Date;
	bh=+Okbavol21f/rrq4l1EXeRGHcc6XTGwtDYFeZUpjJgs=;
	b=W9VQOOCJB75izYo7r6ZRgDwl3Il54QZy3xJE4CN4YeZXC2C0daDVAAsfmc6Li5RW
	XuUn7RxZOKlgAjHfg6CzFaD7gAwQr0h1B0SxSrXtoCUG2IemdCMjYet94Ott0mFXGvj
	MlV9+yB4zK2X0KHS/hv2Ljfy3mIbl8eWc2pd8BSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658851252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Okbavol21f/rrq4l1EXeRGHcc6XTGwtDYFeZUpjJgs=;
	b=UraukazTs3QUwFSBA3eKNptRGQd+h/7BnyVgFS1oVulJYZM9kmYr+TBXOl+Ha4qR
	HVjdzD2S6YfjB7ADKlnC9/u9Hlf+Wlaolh+jWyb8ee3jjUNl4Qrw1rPY0emO0ZwWR8V
	1h+XnMFiWFbb55isT9b7W8u3Z0gThTB7+g0gmlm0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b3d595c-211f4a78-3eb7-4c3e-9562-60baf76ecd25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c21fc9250862f4a34e94b873c896ab570775604e419062c2a78f02392bca47e
Date: Tue, 26 Jul 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658851252

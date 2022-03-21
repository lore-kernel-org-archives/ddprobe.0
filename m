Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA3D7A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 04:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647838285;
	h=To:Subject:From:Message-Id:Date;
	bh=vinDRn9QFmzHBxnQmaDcW3m8ydAMKkyrcvFbI9Yic8o=;
	b=cQJw0ww2fM/Znkjacipo9+cEOOiQDU+jfmNT8ZmR7piDX1lM/EG8mnG+xFbT8tbj
	bJUaFncSsrwnWSe5uXCZ9n+uZ5JVblO4Dd9KM60JyF0C6cbLAbrxTAJKs3vN+JBYiri
	3k0CnuU6orHm1ck1JneRjPKHiP0LduizhCld5KMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647838285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vinDRn9QFmzHBxnQmaDcW3m8ydAMKkyrcvFbI9Yic8o=;
	b=SPWj2lcbIbEedzXsOT87CUgjcu4iMtAsRHjrcM79bLzAnYDQ18iChi+LVkk29Yq/
	MbzVBgMAqtM7b7FebKFrL6reCPpLC6iozFbhb6sGpblVmfnBWla1rEqCKWksK2GBuss
	YOHWB12Vfqq1j0j8jpkTUkTwl+bdrorY1EN4dHvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faad0cbb0-a0a2d0e5-5e2b-4bf5-b0c9-b86196d1b541-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fd4f0dfd44760bb0f0d74dfbe52985feb5f29881b0622e4dfec416c34a36374
Date: Mon, 21 Mar 2022 04:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647838284

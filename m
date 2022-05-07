Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D27800
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 11:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651922878;
	h=To:Subject:From:Message-Id:Date;
	bh=Y0nTBlYEoYgjoHUaZBV3rf8P6hZCTnc8VAKn19gggMs=;
	b=ApXzZcogWkQ9ZHNDwiBtxZAbJ0CEOEKjVNtNVkkiDK/WGr4Fy9FfgCBnFdJDBMIv
	JlTGRxc4/2N80SbQJLwRhHAaAcKcCzJBqtnPSyZZbPFL4QCCXScxJgfWgVRgq7y+Zno
	HCVnx70W7UyrV1ZqzVTlvTmDtqllbZz6EWubypNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651922878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y0nTBlYEoYgjoHUaZBV3rf8P6hZCTnc8VAKn19gggMs=;
	b=Y016eb9o4OlfYSszVEdnFNho6GjZttSTjvyVbpt3Zsj5/0XLirmw6jAXrC1i7mTd
	7kU67Abiw7IjaA785z5TN7Qw+sNySLhbuymJymwIajCzLH+eFp2DQyVGfAAusfumw//
	PUSc1MsGmCJ2kl3GT+qiB8/1PyivjL6D17tiar4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809e46bf36-5b66837f-c674-4abf-830d-4ed53974a13a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abf4703053a2c96f1153f09026c984f3e7fd4476708af0cf0ab2f1a29fcb6c3b
Date: Sat, 7 May 2022 11:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651922878

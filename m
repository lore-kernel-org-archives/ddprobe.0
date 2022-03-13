Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3E7A46
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647172584;
	h=To:Subject:From:Message-Id:Date;
	bh=PxMnzqN6gY0V5V4/lqjBe3X6pyC0VMIz7zxnJH+exaE=;
	b=IBcxvFR5+pXYJi0dps9RJWz1aGL3njf5UqRz9tYHtC3Fkt+SmZASOBpIwPKoHT5K
	mX+UaNEA5ALlOcEOl2TtfPYsOZrZUOlU5dVLJJIFrg4QUA1IOsXKvZR5gN+HKCiiprC
	zrorZ4qJkt0q31dYv7GpccHerIa3PqsfGD8ye5hg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647172584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PxMnzqN6gY0V5V4/lqjBe3X6pyC0VMIz7zxnJH+exaE=;
	b=cIEft28veD1Ai8n6cvBsgPe2J9xDJNhnqtBBgGgFTa9INZiYJSmB4Owrd9FtFloI
	bTg5mAZnPjMOSNiR4+6bsi9KEsq2S1Ny/Dd2FCAt8Y0PWNW5A+BFCVo55fuFdDyv4dF
	ekX4WOYWgbFgT+Wv4HbiF1AOCziz1WtOfpn/IMIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83230519-6bd79b06-4297-4ccb-8c70-122fee5f5453-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07695c29bd0d99eab3737b1dfba2283a09b6fa8b97b8b5b5f43d8254a218666e
Date: Sun, 13 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647172584

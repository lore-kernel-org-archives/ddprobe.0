Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958681FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647334585;
	h=To:Subject:From:Message-Id:Date;
	bh=yEKfqpj9YlVrw4qA5kdH8tpMR1nuheg000hLTuSha4M=;
	b=mTVVP5nlYKMl8R8PvwrvXTY9pn9HJbTKx2hivqVQBMGnudhGKn+AW//8QbFd+xYY
	iGm1icoMKs3E9f4yF1eI8RvutilkkIkReADMBPj/1NBnqTfTBc7gSQ/1xGrS5xjr1Of
	UfQHAxDZ9pnYK6mMSPgra9fNWIs4LK8yXcmWkD68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647334585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yEKfqpj9YlVrw4qA5kdH8tpMR1nuheg000hLTuSha4M=;
	b=EGlu0pwWenp4hMZsZL4Ian75P1r46kTym/9S5bmAxqmY1pGouC76x8mO/JW7DH5Q
	0zOcUBLF0VWA3trF03ACV9JtqdNX1onJG9wEU08QJwkX/SAIp2fh/HDU6y0dz7MvUIo
	zKj9CFTUkNl6xFrRnHwxPOKxHNZO1a1qtkRFd9es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ccaf1c3-2e049768-0a9b-492a-975e-ad478e8c31c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aeabb2e2e0a4a43712f4759c97d3a4bbca5cd18ab8f93288e24aa0f0e9f87dba
Date: Tue, 15 Mar 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647334584

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C6C7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646916385;
	h=To:Subject:From:Message-Id:Date;
	bh=yN4dhxo1jC+PGsNxU6HKv9xWA9uQPfx2BinVCJvqWd0=;
	b=hMNmkNCF4XdXESJPcRvM4cI5bui//SouYBZGI/slvaZB38nHH3tcgIo6I3iwJ7DP
	ff5b1QXZN9nUUXtDM6WnQg7RVGzeYVYdp180MiFV3E60oe8je0LbOfpX6pRipz0+nAN
	WZ6+bQ6+nFjBnZNpc6UMQvJVx1k6ZM/WNrEley38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646916385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yN4dhxo1jC+PGsNxU6HKv9xWA9uQPfx2BinVCJvqWd0=;
	b=NBayIhWhI7bEKixYgueiOPUHALIgFitR+7BL+xw0ieoA9DQE73q1YyY7q29Qf8eq
	eKgV0nr5VVIuNkUedxzOGr5ywcKhd+j5mP6fYerNrxpFGIVNaBWckBqft5SRdqVMUeG
	MINcnz672RfMtyBs1HCeBm4ob6ctBXhbG4iJuf7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73ddb812-038d4f33-8b7e-4213-ade4-035f1a2a6bc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e8232ca41caf96654fb1364908bded2ddcfa1b05e35a7aa3ff4150b4cb211b1
Date: Thu, 10 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646916384

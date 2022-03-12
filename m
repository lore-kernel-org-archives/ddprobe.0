Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840E8258E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647110784;
	h=To:Subject:From:Message-Id:Date;
	bh=05F9ApLKxTkxxPq/Ri6+KKgN1+MDKrRt7sCpscI0mI0=;
	b=BOSvVvhFfTkUiPjU8+giO1DRTre0d+grIXa/0yYRaj3NiDW8cpQqxTuOjp9JXdeP
	pNG0DrtJFaAKQTqCAhCGPNI1IqmCNE2LvA0ci8AAAiXKDoXZxi0qPxPJi0A4osZoJzb
	uTt1O8zwG468fM3vUEwPvOphzFiM+jiWWxQVTxkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647110784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=05F9ApLKxTkxxPq/Ri6+KKgN1+MDKrRt7sCpscI0mI0=;
	b=N9UhzQiZdGV9kuvNtJ5wHwMfjyiZrTzUk9j/EZKhd76SELpsK4vprWC2BxXPzvzi
	Rvatp+BKp/wA+HVOZdDL2IkaVmxvYyX1ockhPl8fozzXNIV1Rqc13z/Hv+u3ULabh81
	ILJsiRnakwOYeLmuuD3VDBYCngdxuwlUBudMRpds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f740723-1f315f57-0a90-45b5-af88-68842debb692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf5e4a73d7db5b84c59102efba929b0d350f38e8e6e8222c6f31026adac8cb77
Date: Sat, 12 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647110784

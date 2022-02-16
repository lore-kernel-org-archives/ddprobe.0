Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B98038D1
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645055485;
	h=To:Subject:From:Message-Id:Date;
	bh=k+7YxO7Sj0Ly1LmuL9BsKx5c1kAWxk3IIO158MzPM4I=;
	b=kMRAfZKCy6mS03iNk5dxaTZMxveP0SvWtJN7iJRkuJpD42SQlCCseWreI46jMvmP
	fTS184Iux5UlIE1yswiFl9ZhMyXQsIiUVdu5WjkyhuEbheofVIUtS/nAFQqqCHreKn5
	BpHMexTSRLBCW29eBpnUCOAOAQdAB+AwqCoDjN80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645055485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k+7YxO7Sj0Ly1LmuL9BsKx5c1kAWxk3IIO158MzPM4I=;
	b=DtkhoFcj4lYLE3GFyapNlxqfima2PTnVYpSeUOQlWPd8y1koP+gv3wzyn+dM2FW2
	2EFxR3MFy4idZ72kOA/VCgaKpiz73zk3ctAghyHUiEHL9loxdIxApZPjjH5Zb6TdomG
	mUHgvTLw+DZf4k4DD+Z0kaojOxFIWbnJZAiMnDRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04f2a3b1-471f875e-ac35-4be7-a32d-3f8530e93358-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d79ce9e867d78bdeaaad5cd5378c3ca81da62e2207ba908622f8c229d5c36aca
Date: Wed, 16 Feb 2022 23:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645055484

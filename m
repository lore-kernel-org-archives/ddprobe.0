Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610B57B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645428984;
	h=To:Subject:From:Message-Id:Date;
	bh=eqfV3Z2K31k4Gwftw2LI7QENbVHC6DTYpJxZriebggI=;
	b=UF+f3+C8cd8mUFmNNtIrMAa2XL+5XacIq3Rgj3QwqCjhIsE1MErI4xZVVIjWnHhq
	brUHGaaXIhq/gEWDsB3XldAZ1mtyVTMzGHRfkZeYumIXp+H/JTwvQZBvgHup8efIVAR
	MX4ulUfAo5gsxX3s8woE7hL44Q++T3UqNc1tVry4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645428984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eqfV3Z2K31k4Gwftw2LI7QENbVHC6DTYpJxZriebggI=;
	b=HOsfbS4fpY9/SJYa/lz6H8AGghqt7XxFhTDMuQs9qeKoIjLLmGb3bZd5xwW5XHzX
	V2BOJZhEX9SHWIMXkmRz/K9y/ZwwcCeVl54WL8grpeypr3j/EvX9xVTw/I3gBj2n3sS
	jyhIpD5YVl3/XYqV/mSFFrAtY9shLzC/SPoi6F38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b35cbc7-124723a3-30ac-47eb-88de-251f5cbba6ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b528fb8f6ca7cb682324a60dc2bbf5974047e600c73306a6258201b1b40f1ac7
Date: Mon, 21 Feb 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645428984

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B5D179
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646137885;
	h=To:Subject:From:Message-Id:Date;
	bh=Q8GDo2K2dSfJvDSzJnQmP6zT0A33S0rxpldEsN+ageQ=;
	b=QYMLRqd4Y9Xs9bD6yDYemq2/PjhsWSGiEdcWJZrDkdv1/+oM+KttD+fZwwgXCIsz
	7hEFw4D7FZWqdQAhs9dKRKgomTgbfDCtUJ9X7eNgI67OU8xML1vZjVyvfw1HQDhKdfx
	H+QOuOippLuU669XN5zPMRtMmRloaE8YMrFvctDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646137885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q8GDo2K2dSfJvDSzJnQmP6zT0A33S0rxpldEsN+ageQ=;
	b=K3Sd/X5lQ6NF/gV0jGz8ajkP5fq8dKRSZScIOi4fsf3hhqXgFSIvYt+xdM8ED150
	7R+eO5Rlgs4kCYpjmGBLlZzPzZag+PpfZg1YjyPTRcYFwV9d2UxsvqJs21+Mvte44jB
	05TRkswSFrFrBBB21yZ2CiQeJMq12StBJG4awVHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4576c062-a937cd6c-719b-44b5-b2f8-ebddb6ab424c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd0f8db79af7323140a3b95532ef666db0b387dde0767394e54101d63a53d881
Date: Tue, 1 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646137884

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB666464
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646792484;
	h=To:Subject:From:Message-Id:Date;
	bh=odWDONaKn2AR8VWWBC8Kb2bcLkV3KzIf6I+XdUf6WBM=;
	b=L2COjwy+ldXGnYJJtypNSstVdVFg8w7LKz0bNpYn4KmN0+UjyLNO5eY2UkRB71Hk
	ZNKK4qkDv3zJoB+f8Ef2AzdrUFpjbW9Ff52l7jHT4XkiMiNIW1O+7Crb82R1oHu+6YX
	17v9NU9UmNF4qbovUVtS0wiaJHB68EdompG5J1j4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646792484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=odWDONaKn2AR8VWWBC8Kb2bcLkV3KzIf6I+XdUf6WBM=;
	b=QHuBjEa+EYWINzIqDfvuJzP8p1PRIHiFL5r+iyiZ0lkuAhunGe8Oo43dodOgQYJx
	T0O9QFRQVZneJtMp+WD4aIlEgFvDp7rkC2wYk7IYeDq7GlHEiezTHC6y9wGPzWYSldt
	gh9d9YuyhGyCiNK4odlbTloXx8woaivqpiiITfuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c7b2790-e3680553-e7cf-4c3e-80a0-27cf5321f67c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1473d14a0488ad227f7915654488821f3a9e7d4d35376074ae757ec3943a0b2b
Date: Wed, 9 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646792484

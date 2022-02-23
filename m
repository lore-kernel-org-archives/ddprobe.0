Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926D27A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645603585;
	h=To:Subject:From:Message-Id:Date;
	bh=W7ewINIqvprpHcZYH/LNLr9RWqQLl6+akcSpd+hVZBc=;
	b=FTqV5lPdFQ+iWjayfJXHR4mW+shteheJErEcQXQaukTJNilzDAJKb9uAFxbhOmfh
	eJfIcNv/c+GHbtNus77hzJK+mTgWHgQ18ZqSyNVduw1tRTdvNjPVJHUlyMjmywmPD05
	DoMzl24E5OzUhpW0XSMyzUYyb0sNx9u2FvyEXYqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645603585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W7ewINIqvprpHcZYH/LNLr9RWqQLl6+akcSpd+hVZBc=;
	b=Owt1Z7ANhxZGXgQuaBNYCIHX9IhcOT89H7o9IlTjUYi91jSqowBySUCFXEF6QFPc
	Q1EciUP7L8Vgb4aiYwTF3wlAzuC+bX8NmbxjCgzq9it/Bgqe1rkG8YrBXdpuFWT/nsN
	cCQEXujKgMFFzNQiDZTuZpUNfuUt8PsNuuZBR+58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f259dfaec-473f989d-49b3-4bfe-94e7-221990a353df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f200879fb7aacec91d7d5876f0a767d2f6ce6b1c5dd712e3c8e737f3b51e880f
Date: Wed, 23 Feb 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645603584

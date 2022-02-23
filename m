Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04FB7B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645611685;
	h=To:Subject:From:Message-Id:Date;
	bh=CFJ5mHlAWnUpVsuWido1ahDPeUmksOuGQbqGk78CK6M=;
	b=cz4cXoxclj35nU5vzdMWRHNeAt3NOA/zEjA3YIzBJGXRs5Ld270Sc/fvQXt2koxy
	/B38fVldQxBFucED5zC51G2zLj2HxsUyf3Jnr67Dtp8mtaQ+PgZw2Hlj7otwDYWwPW8
	G2gmBsXsJ4CBAhnlivHhF9ZV7cT1i3LK9GHRglf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645611685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CFJ5mHlAWnUpVsuWido1ahDPeUmksOuGQbqGk78CK6M=;
	b=haf7iy+mOZPdEy/jR6BHrtSQAXCQp2CJU8fvw//dahPL9i+ypLya4tMi7rhFzCVQ
	x/Dm1DxyvwPZn4HB3timOaMqEVqmg6nIuuZFwLyE8D2RwTfnUNw0Kz8LWLvnqxmZEUE
	1YQAqjjaztI9XK/wlsORvhM/WuK/wiEN0djZ7904=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f261993c6-be4ec41f-f868-47a4-afbb-1db7ca4265a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fee5e60459eac3fba8fb0ae7d58ba78c7807ca644e5fb0af8ba1ff6387f8ad26
Date: Wed, 23 Feb 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645611684

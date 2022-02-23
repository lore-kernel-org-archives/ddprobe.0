Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFFD7B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 09:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645606884;
	h=To:Subject:From:Message-Id:Date;
	bh=ctAuOfLOE9tYfuRzcD7I25RZVUkBepjGFM5cmwogET8=;
	b=FcEKE/A1jm01vtPJcLbTP14eF3Z3QcPG/Ka31se9okoQrToOa8sGEz/6ywfJAslR
	zCa9bVYXK34IKz360STH76TcgVUolIXi6WIP2J8McnBnYqmxRa2H43/2GJ7eMH33TPf
	QPwzx4ssgvSasAE7X4w7yjGBT0ahM97MzbBbYtjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645606884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ctAuOfLOE9tYfuRzcD7I25RZVUkBepjGFM5cmwogET8=;
	b=joO/caURrilXuntFZEyFZqI/4queDazHemkfvhhg0tduqZZuuDDzPJw1vsTB58um
	CARqIN4L/w/4cQplM2qaX8rppQq7BXIE5Lr4Kq//BzS+1Ta9r1gDgc0qvGWphx6ruBi
	zryOhnqn3o6C7/glh8UsyN5Pa5n5Dariq0BOsgP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25d05585-abaf8969-1222-4734-b7e3-9cba6cfefd39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e50b787ff303485402679426d87d8f11605a5fa37b15c5db2f73d6f60c684554
Date: Wed, 23 Feb 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645606884

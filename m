Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DD83211
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645191385;
	h=To:Subject:From:Message-Id:Date;
	bh=WuYGnI3XRiS0YkIod2zEQxw+27R9vB0udOKXxNn7H7c=;
	b=COEjD7eIHlK0k8jEhdicuonrY4ZI252wadhANbMXoGxbmJXtS9Pzv9kD+bwxQqS8
	V1CkUtBEGUaeOUB3ed3WbCUg1OcevojoqMZD5G02pJvxf63wbA0h6vQ6ZfJvse5ytX4
	2lCt2Enkm5KrlF8/gBH8cUN0i8QXESp132jq6knk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645191385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WuYGnI3XRiS0YkIod2zEQxw+27R9vB0udOKXxNn7H7c=;
	b=Sts3YJhlwRvEbS4HuptOuGC2MKoDWW4skY0yc85ZFWi9WqRhBaYriwxB+GKW6J6F
	M9xgB38SY8JfOEm3uUC2Kir1+3TTV7GYdGkMbJLQZF75zHYfB7MakYdByoh5BiGM85t
	T5jzXEeSxZSwr5QQBvjcv/b4pZruYuVng+aQeXjI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d0c4f0e-cdd5aaa0-3543-48ef-b9b3-a8a0d625a237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b167c14879174157e35151cbd9192fe1729291b9947501f55c5bf1547308ca7
Date: Fri, 18 Feb 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645191384

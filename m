Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47351257E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 16:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644682806;
	h=To:Subject:From:Message-Id:Date;
	bh=gR7WNpqLjbSqiZMx8/d1REHN7axdBxraBc5Jt1vvFb0=;
	b=kifVP8fGAWKn5J/KagMkZIFMHJ3fmZGGljq85Dak6Z1jyVZp+G5A1qVDzUpwyTiy
	aZdGxjF/OUSOPUErvrN/Eb6DJxkZA2mgVDNvLpoRzqUwjwJu9KqLXy9g8fK0vpOs91T
	AAApd43o2Mm+FLwvk2P2Zaewp7UvPmYZ4A6MB6fA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644682806;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gR7WNpqLjbSqiZMx8/d1REHN7axdBxraBc5Jt1vvFb0=;
	b=ZsmgeYB5YMHJkbxX4mn99Uf8o/TpuYM+1ZFb6XCUF3xNzIeFcwAWDknFUCGsnGTv
	Azl9EXQoVBrLy2yNX02FJ9NIvMGebrL2tgZE/39IAp86B36b4yx61E3XcIL05ngEnnr
	xF37jjpwPyqYJ4zbc7n7K7sk97HFj2jInjnHPwZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeebc04d9-d6097022-cf18-4451-9861-7276e9170c35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87c2911bb0efb95d0d67492a189f25f2e0fa4532fc27e1b9c0cc2cba2cf0f2d4
Date: Sat, 12 Feb 2022 16:20:06 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644682806

Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C044F38
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645233085;
	h=To:Subject:From:Message-Id:Date;
	bh=ye2d10nhVdJKOrSgq/b2NYX8UYIYlgrs88eCtIzilB0=;
	b=ZmfTMwG5buX0DfuUNiN/uXKhJLjlNobFvDlf2uK3aK+o9HrXdgP5sbS5E55Xj7KJ
	KsEqOXxJmqAf8L/emR+WBn9+NpoVPVB+AURR+Y8gIscAGAm7CHy7TDz1U87Gulr0FU5
	60KcxHNEybZqdZWmSjCKkUL+AUipcltJ7wGOaP1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645233085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ye2d10nhVdJKOrSgq/b2NYX8UYIYlgrs88eCtIzilB0=;
	b=Zc+Zs+GLG1Ha9BZWlbGBsRiR++8Bjd462p5mTWANJKK/eFiCfqxH2PG7VAX1O57R
	vD8KhFaqRj7kn38LOKwUHguj4F1hnfY4dXldnHOOK1I3eYschXa+H8MrkHcsaUyOi/V
	19GAUdWHt7buanSe/Lk7HNNQgqwfmd0YMTTRqewY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f889998-c3bc3af0-037b-4b86-b647-9609b45ff57a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2b6cb9e5c5f98c2c2914e139fe15dc835ab25a678397a89a1c87cd9139b220e
Date: Sat, 19 Feb 2022 01:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645233084

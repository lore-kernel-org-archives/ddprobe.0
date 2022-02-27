Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BAC4C75
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645999884;
	h=To:Subject:From:Message-Id:Date;
	bh=dkNndhRBMFkMMCv2OxkIO5jJ0mSrXv3QmZdZ+3DK9dA=;
	b=NSNl7f2BdYlnC89yDqeCvz5s74BQ6a9v+W1wVd94LdwQX5YOvpJDr7pnv2j3zrDA
	eG7dklnV9xr2Oa7IBTh6UDhAkGMkF6uIIAkZqymSsEGo2bnbgTPir6DpwHSc5Oic1zU
	R64tj3q0cBvXYlZvmIF+yl/IthkvvwjplsxXajG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645999884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dkNndhRBMFkMMCv2OxkIO5jJ0mSrXv3QmZdZ+3DK9dA=;
	b=LmfNc2D/2alQv4zwz3KVlgIY37q+m+dvP2TtNbQkTTu7Tb9Wd4Wrztu6rrrLpQYZ
	L4NuckTU1KByCanBHe3c2yCAkJVzaRg4ZQuL7xuQPbbICjox6jjc+l6sIFmuWPXKHlv
	bIVjAoBbTyLN7J0AZKoPAzxJKjagjS1hNDZjh6wA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d3d09cb-9079a4db-bae2-4328-9943-a881438d8086-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de8c16c9b692ec2d72b5687c86a09adfa651b5a2f5d5f811818f54e3f13bff0e
Date: Sun, 27 Feb 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645999884

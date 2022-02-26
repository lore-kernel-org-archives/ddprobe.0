Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7557B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645904184;
	h=To:Subject:From:Message-Id:Date;
	bh=UpXnOt8csPxr/oCA6linY4HRXf3tnA4B65OKu2JEESc=;
	b=kdm/d2jblAqaXYhvMker0559gCeuVmhtxEXXWTbq6y/9nFlW37Ba4/FvemfqfNyi
	bbK85uXQ0MdAyMUd/vF1buOGCUa7IKShu6mgZaNrAP3/xptA/gi9NvURpNvIBQmQsaq
	AgZAHgzHk4tbd5CMQNanoL8Bb/BNfehHTtzGZm2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645904184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UpXnOt8csPxr/oCA6linY4HRXf3tnA4B65OKu2JEESc=;
	b=VE8TO+EF2Bpcg7Dr+6oKY4eSctDLOgZ2J8+WuZb1tFythuXaThK+42GmXf2ugWQT
	E89/oRAZPFcZw1hRcbZPdmXjEQEHanhTz9V1zb6PlB3MVfQKWoEllOEtrNy6yrPQ9U5
	XB/XfqP0C6bPDdAcxmVgHA6fmYYRWyK/MhzWbn/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3788c5bf-79a7561f-82b7-4a67-be8b-f17ec52cb0fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3ee99d5fcc93c2a46303838cf8b99096d55fd75332578c4ef0d56358b3be184
Date: Sat, 26 Feb 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645904184

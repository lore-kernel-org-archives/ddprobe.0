Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFD3361
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 06:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644733216;
	h=To:Subject:From:Message-Id:Date;
	bh=c3hVkG7/UWq3/Ro88BCtLiGQFPSQ4EXoT895HPYQfWM=;
	b=iYGB9oCEFYtDx5g6LOqb2R3VxdJ2Ow7k3X5gKAFxYBuoQEHLxiG0jzJTFeobtDdo
	rgexDLwCguWd5joWsf7GvOuJ2qa73ZvJ4TMR0UrD/55V8pz2PigPw7BHk9OHSbu8VMC
	S42lP4ssUhW1pQyVzAlNfEBmqL1Z+r6psj4E9cMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644733216;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c3hVkG7/UWq3/Ro88BCtLiGQFPSQ4EXoT895HPYQfWM=;
	b=ZSi06AS3zvL7PUSmXLUaV0Sb/CkbTfov6G3t8BL8gqWhqjDeG/tlNKlfzosyPTOJ
	Lt4NfW2T6iStY2yh39f8tjQXbhJxvMhvSqk56BX9hs0Oi905LCicQEK0WQtr09+Rtkl
	VhdZQRJ1s2C6L/gQXqVH0Gpa4+YNxvr5nxBptHjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef1bd3567-8f87b716-ebf4-4597-b05a-65524517c539-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 384bf44f93817ef7465bbb7f7ba072855d5903dc0b4b3ea1ba9cb847a78c2f96
Date: Sun, 13 Feb 2022 06:20:16 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644733215

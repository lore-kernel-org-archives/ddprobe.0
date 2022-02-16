Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05F623D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645034185;
	h=To:Subject:From:Message-Id:Date;
	bh=fzfm0H/PpDacUoftNp0ggzxsmt8SlmohQgXaWyrRT5w=;
	b=SCKdO0QS3IuJF4Bh5WBGLlNna0SMOEvqXRBsp42E7E5JF+o7kwyZFcLS0OsONoXi
	455rH0uhiTSapDXhTOIgF7kbszKM8qQvE6ZnP8CiCmaphJkt8eQzMXDkngOigUnQCq9
	eTX+yzxYDZWiW3udPB7aRQ0LmRnjE00t/jL81C7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645034185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fzfm0H/PpDacUoftNp0ggzxsmt8SlmohQgXaWyrRT5w=;
	b=Xf/dzNUIRQmHR7kmxONhmIqmnPPHtSKAd5PPS2APZd4h+9bHfkKmMxb20kLY1wrL
	kNcuns2YOgjgZRpLEvAMqSGxfbKJt087hB3/8XC/cISwrEBvlOp/JkCLzI0mo4orz7h
	LbqpIfv8O/nckSMD1Ev5G+A/kM6G4oVrAUsCFEV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f03ada092-d3b698a5-8e82-47df-8552-818414e4abd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3828dc1fcbb6789a8d8e3e7114b96df8ddb96e1c5b17bbe4b56faa58a5e38a02
Date: Wed, 16 Feb 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645034184

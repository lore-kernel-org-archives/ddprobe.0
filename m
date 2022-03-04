Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A5F7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646367685;
	h=To:Subject:From:Message-Id:Date;
	bh=BcEChrVw0F6nwevKNh9vp3hJSolsfKk5YAAxjVECn3o=;
	b=bIt53kOoCKIWk1JCShIqRewQIiSNQl/kjQ4EeVyPBg++B0KEnv/v7LhJ7AT658T+
	ViCHZ01eV1hkFm4mO8G9PbUlMFguYBthACwV4jk/hPaAYrLzTkgI3cgUXSFm0r1w9Ev
	uBfGUbUbu/ZdmjWs7aXjx+ayb93rxySDRUoXsVQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646367685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BcEChrVw0F6nwevKNh9vp3hJSolsfKk5YAAxjVECn3o=;
	b=JJP9iYXLpFcydB7eXnP/HrMzBksIdsnPhuWd43XPm09VRYjWn/rVYd5zkOSJ2uB6
	+afB0+i7Egu8/w2nhqPuauN2BqKXP8YWMYpb6N88Dm4UwtdHptFKbbdKgCZmiB661H5
	2yL+sQubf8xRTp0PIi6sXKD92mkk7ba1c1yKWVGY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f532938d5-ba2e22a8-8db3-4dd7-a837-89b070aca1e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85d07c6a1efe41ff9d8329103df5288f6f2cd08b1002a91090ec83cb843593f6
Date: Fri, 4 Mar 2022 04:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646367684

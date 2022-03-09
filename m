Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9972D7A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646802984;
	h=To:Subject:From:Message-Id:Date;
	bh=SA0SY8aAl6IA1m/FC0z8EwdM6Co8vjEB9bJIpoCV2io=;
	b=UfPMlWLCZwGbvGfoObsNs71k1bt9CPxN8KVEnR1vxUCyLGpkTu5X3Yf6petrxlm/
	YhHTLooZhKxusvNPiNE4o7DZfXzU3nGECXtGwNW7gBB4Juto60Qh7hHrH72tLYM0QUD
	I2vLKvBrq3ALtu/uVSftttTHnwZ/Oli2CTMdnyvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646802984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SA0SY8aAl6IA1m/FC0z8EwdM6Co8vjEB9bJIpoCV2io=;
	b=Yra+Nkh19LCrE5tvQBETEluQwqw2k4cIb2eDkZ9E6JAr1eC5/7jw1uIN+Nc8gYDF
	F4V7kCJKn/hAc+I1E6HMcM5+zg8OqORugIMJkUcAiAYndIRYZKPy+TGa5zAXNOq/pjz
	S6yVxFn/UQ9xIb9S+NW7TT6CSMJ9QBAx8kVoKU/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d1b5f17-a74c92a2-0f11-4de6-b9f0-5edf94fab770-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e95cb91c56b02ec72e27cade400e12f7071cf0723bc5e2535bc67211112ae56
Date: Wed, 9 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646802984

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E717C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645804885;
	h=To:Subject:From:Message-Id:Date;
	bh=xkHLNJfS8KLVH+yC2GYXR0PfNDbT63JTV+obHRHo+Mo=;
	b=ejo8FIbbVsZfV6nGaUTt4uuT6LxEYCYD4yrDp86v0n6D6rI3d7TInpPcWHBXPftH
	742IxmpxkQytOIRftn3VE7Emcmzk3XQMdqNRFWPAedx4ddrtOrUkNq5BUvzxiLO7MYk
	xhjyC6HpBYObYFKZk0OEuITSSjwCViMSmNKFnYPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645804885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xkHLNJfS8KLVH+yC2GYXR0PfNDbT63JTV+obHRHo+Mo=;
	b=Fx7DsZOiwqnGx8iqMNWuWUrGz8jQuhe8/0dy10dpZXlLyLYd99u5ZPgw8kOxHwZ9
	MSXAUjfhboreC/j6rRl2SZWMJWWpCXZ7HIcL3UX47YbggpRv5QIRSPV8QhBufYR+ObX
	tGY1pjO+BaH/uYag1cF/WLhi+EvBWVOtKAIdqL3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f319d92f0-5d97a473-30ca-4dcc-a53a-94792229d1e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20ff552282c71c886a3642a4aa0e8ef4256367dbd046746c80764eed8ac0ea5f
Date: Fri, 25 Feb 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645804884

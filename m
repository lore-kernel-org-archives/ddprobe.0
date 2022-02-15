Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919457C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644956784;
	h=To:Subject:From:Message-Id:Date;
	bh=DV7MJWR8dxvVmWGPzHfXOTJWivYEVX8Z/i6mXWlTPxI=;
	b=iNqkmGxXAQc+li+oW3D92RVJkCS7xxLyUIT/sTEXNQguUSZiLyrIUq/i3PRRweGQ
	T7yA5fDIZvseS+ZfQ/g3MpSjVmnbDMLxpAL81ahGwv/Ju9upCsV0Ngdo6S08HYbmcwj
	+czl4Ru6Npd3M2dJuxZiqzI/Q5sdkJoAb4zjCeh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644956784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DV7MJWR8dxvVmWGPzHfXOTJWivYEVX8Z/i6mXWlTPxI=;
	b=Os8EO73G7C//SKWO5vC1x/ymziBLEATZohy7Q5xYM+OheMnZeHzpftPC82RdgCOj
	3L1B+dg9Iy5ObfjHSVY6waAP2SfGrDRhZlGoqIketMPCNUfbU9OI0ViOLyIPVXcxpx3
	bbpGERghkw81shbWn4EAyGCET24/dyC1tpMXIJQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff109889-10e3bc50-f210-4a8e-ab79-a4d2d3a7bf87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15d38093e83195eeaec95804e8202ffe8c1e01e5f329f903b8062ea078469e8a
Date: Tue, 15 Feb 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644956784

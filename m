Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE0A3DD525
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774968294; cv=none; b=lkqh+He9h/aSB5CX7bCqcYcc5jd0j0myLRWIXNanGzw8xsDyG05FEF4QWDLyJUXWyba6//SpLuVL6INZeXa4lfcLMBDBfkj5VT6E7eAu7uMkbNIdRgRZyhlVvVI+HIOyXkDr3rQv/VLU+4kJCknJQOmocGyVkpQuN9kPhuhx3Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774968294; c=relaxed/simple;
	bh=Qedxk+7SSOEJXC4FOekBBmqBZ2WpihYBSWRwTTsZ4R8=;
	h=To:Subject:From:Message-Id:Date; b=oTMjaH97FVpC4DpOiR5815VmTPbZ/NNdWQj65HqAHod9hp8NUoB/OGRvy0rFp37rCORrMBkpDOLlDF/nMXpYv9e5hwhyteSJXeyiotdofbKjdKylHXcqtPM61IAlYp0t+pQoqj270E9fSSp3kkxgyCXhs/UXlAztO3iRp5LGlK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+GcGBHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+GcGBHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA91C19424
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774968293;
	bh=Qedxk+7SSOEJXC4FOekBBmqBZ2WpihYBSWRwTTsZ4R8=;
	h=To:Subject:From:Date:From;
	b=T+GcGBHeI9eTtXxytHvQBoAVFd9R/uQVltzqFYatNOjn9x7uMHxAt2nz7A/Lq6w/W
	 qTESEZz4YfLEiw1OZJGfVP7JNuc6StxifIIe3lxEf0b2Ju9sXi6WOg62tEkAW8guTs
	 obPMjm0oql6oX2ikfqlBEN3gsQNJ6jhWv00S4T1fbGB98bMJD9Jfnb2nFmosA+9E43
	 9Jm99PyNdp322yQ0zyE5c0WZiSSOunWKZ+duea6y3fHV8EuZ4ZDJhhqPKo3wOZiReW
	 TvDuUb+G/q7/A7NiEHlsYan6YY9d6kZlRw8SBu/yPISsVxzKl7WdkfaQjhslehXXY8
	 qNhVUmxE9egSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970F5109B47B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496829360.8063.5603507741384021823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ed9fef988ea8d037cfbab82ff2bce1513e2aec904149b4886bfee72adb2f5e
Date: Tue, 31 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774968293

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FB51684A4
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774416895; cv=none; b=aIExZxZrRW36AfjifH/gY3Q0d5Ytl+STlnrou6IGbFAzuCrAHKbO+wXKpSttEgnlYKcFLA43S6j2Oj3W6XBBifL4Qu4OnMsLVYsnHriH5fh+zI3zI6ML+mO6qG2tMvo1cuNlqcL5yRmisXTUF17Kg1e7O9/ZD/P+TGRs4SnTyiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774416895; c=relaxed/simple;
	bh=/vy3kB2//gnklCTP//4sHRnJnZAF3TD94vdEWl3hzNY=;
	h=To:Subject:From:Message-Id:Date; b=gImiLCqHuV/YIWgC3QeJ4vhmsJ/i/1APFh32vbj8OqoGcU+UbDbE+dpsFFrFDibsxz6+8zQJSpnmt1UBWlNUfAv184oeE3UfxhJiH2x5uru4KE/aC0xdI6TBPHnAw9tRUSbkVlGzbyueLtebPbETi5XKo3YkSyEK7YlWTpY6TP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iudUPNC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iudUPNC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A4AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774416894;
	bh=/vy3kB2//gnklCTP//4sHRnJnZAF3TD94vdEWl3hzNY=;
	h=To:Subject:From:Date:From;
	b=iudUPNC5HwvhxrjQP73UkogEq1VueRFQWJrd9tHUMmmLqoueVHruLgigHjJG0BFE4
	 5nKxBbedM0J5XAxH+5em6mqaPVSh/V2HDtfw3Z1h9ryZ4qBTDT7AaBaWnuBWi4WYQW
	 Be5g0/Nkj9Udevw0RX/st5EWL5JmLF3/wGFBWn3Zf/K44ceySn+FAtq7OsqWKv7Y/3
	 FQSNvAzwJQBRVFAFnqK+4rWLcPxF7BCOvPiARRhsngEkilYLbLnrjTQ5k3kSt413e2
	 5Y+3FCT/Nevh80nV31Q3CgelvjOqygiKYZZcaDWE2MWbZpJTi8l3+CXF1AI3AKLVfO
	 +0kPoQ1v1e6uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB6FEA806
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441689358.710.17361704458294071556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24347cc8796cd7b4e5c7aa458c8bc15454dc9cb393fb37d629ace51c5552e01b
Date: Wed, 25 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774416893

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A8A42049
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754980794; cv=none; b=QX8JBfDC8NlqulN/0jfKmfu24p2G3lZIakLmt7gQeM0lhtVyNSX0bojxEA1y0zhqra7c/tdmVEGNWs0LeTL4lHixOIInixyE6II6sWJFc3MHuMlWgF3hD2V0rV/+3JRu8aPiICk0Q5Md2M+GuqqJGo9Ur9HMpjn4agqZvjnj4ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754980794; c=relaxed/simple;
	bh=//9KNWk1nYN4oXa33YLNRgS1o8BJDCcvQEoXUv2lctc=;
	h=To:Subject:From:Message-Id:Date; b=OKpKy/z6Ch0l4Rd7Hn3SXlAA3LG7M/jh70DGr9Y7NRZY0do1yRJ4x1kGIv6P+tHsptsW3FGqrEy7y446yrjUV5WS9/Mt96pwRKJ3T+M59tZpA6qhmqTMJAk8V88ugUkB41f7yvVJzwDfJftE9Ae296fqwdyNSSGguYU1w7qtSDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMnZHGOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMnZHGOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754980793;
	bh=//9KNWk1nYN4oXa33YLNRgS1o8BJDCcvQEoXUv2lctc=;
	h=To:Subject:From:Date:From;
	b=LMnZHGOnQt1FeZ+GpLJALAldspeIbdm4Vg5yo5E5P7fHWHApWdrpJbXie8Gc9VbaP
	 PwQlGzPf9cXAQi04EQxlNG5DklSq7BofJNCcFYzWEW3ILgld2mvrq9KV23HZHRGCkU
	 C0CHnlojnu5+yz8t5CPQ9IKTxVyMT7n/NzHvo1TLaIxB9Gt/YD4DfaeH59BA/nkOk3
	 nZoYgxfw4msK1dMBWV0zRaXBXl893EgehOhujGyxdOq65P6I6BnC1o/cukYwx0i11d
	 KZyI6Fh/sUGWIRcqxjN6l+048NDDG6ASpD5ejpytPymWhyGph/kL9EBA5rNZc0M2/J
	 LjY4CO3XeLhhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B33C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498079357.24608.13099734064932506065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5720834c2cb857cb1678ad04d8027d20e41488554fe90473ebbb0765e5401f28
Date: Tue, 12 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754980793

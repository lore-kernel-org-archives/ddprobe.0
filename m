Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46834575A
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755803394; cv=none; b=IFF5gP2SkpiaiE0Fj8LeMYgwnV+j79p1BXxZXYfSvJ4AqWXug6diVnFvA3jZzXtJ4ecmd6fHDNGqw2w+yJ0Diz+niK31fQhN8D7gG3Ge1QqjCY4H5p1A4Lw+mxUirkxvM8jQLww1WKqE4KeNEEAmlIAEnB92sP5MfZP3D2y5a2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755803394; c=relaxed/simple;
	bh=kgyD96kMg2ev/wJp9atwvMvNYIeyv2VU0i9415V3zls=;
	h=To:Subject:From:Message-Id:Date; b=mLTQ5MDrmpYzwsQYg4NW1AWbZYtphQNMoiVeYMD+UDKgQcJJdaVWOsRyjCVkdo5xTs4CVq5aH4y6/r9SpGwQcM6xZ2M/Xr8qM6i5ZOky056jb9bZwsQH1CPFN6GbwjCBmcwQ4ze3UJk8hHQTbXqQWWhWAT9/p0+kz+jvY0+bOGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9TZE4yV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9TZE4yV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3923C113CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755803393;
	bh=kgyD96kMg2ev/wJp9atwvMvNYIeyv2VU0i9415V3zls=;
	h=To:Subject:From:Date:From;
	b=A9TZE4yViaSqspLEbJfkt7ZzCJRBoRFI/BzRXpC3yORfgmqjl7si98j5ukNrvR5CM
	 mtqPMmHyrkIyoartFPbXA7f3dnfjaY7vZds7Fnl9BrqfceEd3ZE2kX5+ha8cCImE5e
	 1lzw/qTcYPi7BIhKjC9YhXs7zsCC9Ymk9bC5YNKGZRzy93W7cPb3CAQqURMcxQ+qBM
	 d4+SPIdUHkHVI+GJYRdB+jgRzNqxE6x3bYTnGQw1W0f80wAj/zDv6zKutZ7NpSwpHY
	 gOh24BBv7iOV+1utCamh9guX73fMNKNUZfpUEOzc5VxnGs0hlaGvmONmNpRKfuQfbG
	 dkaPnT3gjmJHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B5ECA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580339358.20324.13644616216782436742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd095de5ae7e213882a4d0ef178259b8b95bc37a9c71bd493f488dc16df85579
Date: Thu, 21 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755803393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CAF33C197
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774122294; cv=none; b=sCzEuTtBMZfF5SumepjVgoWS6SH5V3aDn+R6Re2YVz4jYgq4VFQXYHHZLxpUpFsdjnTIAEKFlmu0//3Tz4NX8tvBJsqhn2oEbFWCpIdYNFFQI36xHhxz8/yEB4GhzU2Ee1bxXcrQZpo+OltbxL/cH3vYBUkQtwxOHd8KS7w91c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774122294; c=relaxed/simple;
	bh=mILXgFMA6Rb+agxEW2FlEEjemnBvixGkus3Eqo1A4Ng=;
	h=To:Subject:From:Message-Id:Date; b=gWGZ3WPYUftSBY45VKkh2WX5cepQKoU8JT3y1UI5uYdEwJE4g4w9oM0fL3rJtXGYeYQl5qMnqcA3/rJcc9HMIIN/3OAlukXgzAi06rVJPRauTsrSHXVNi72Gk0dKdQGl3jzZGg8kTWRIu1lvjCqRpDKhs0yWTi+0ecn091vUP1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqQ+TJ60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqQ+TJ60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A815DC2BC87
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774122293;
	bh=mILXgFMA6Rb+agxEW2FlEEjemnBvixGkus3Eqo1A4Ng=;
	h=To:Subject:From:Date:From;
	b=ZqQ+TJ60zDON0Ph6P8vyjzwEaledotz0YY4ydITbzt+T2XM/kNRX+BXnn3WW9WTrC
	 tR1szDj9OC1Vcv55utmwrvb/liQW7yHzCNs2668Ubh5cRbfo8JIf7wP3g530tQ0JKG
	 N5hqdR0cTSlaOTsEiIi6gKexEdUYu4xldr/cdQA+aIu8S0hpMcbN/y12kyRH3+WnNx
	 KwPHP17Eb7hbno5jQx9KylkQhdsH+G9/vyN5bKRP2GKE5wNyi1n7eDG0oO6dlh4Xbw
	 REzNzrwqn5edU3sGOXhBb9D0jVh7NdtyUj4EDNZAQc3OdspUaLU95LUrgp2lTVz6q9
	 wi18wnhANA0hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939DB109446F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412229358.25940.2249982342367639866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c73b6b9e175dcf85dfc36f8ae956c7a9e152eeaed99c64b2bd96c6020b7b7b1
Date: Sat, 21 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774122293

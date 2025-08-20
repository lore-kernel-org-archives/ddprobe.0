Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299E617A314
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755716994; cv=none; b=cZ6UbXONlcF8Lg4rdfIwRoumw/AMWPPJSJ9866St2rev/xIHcBkBEKiDqN5dOS3ra+ALwX5hEVEnq0AfP72JSHWkYfjm95uWuTyeA4KJ2/kVDlKZ+vHsi/uAht6ShRFKDhMvE0LcvfnPy/YI95Ad0zRSBn1Hyx/hO/4Wt4pYpgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755716994; c=relaxed/simple;
	bh=Ro9g8WjjGhcM9E5b4bODiNSMQ1CTvXJYblxIp4s5Dqo=;
	h=To:Subject:From:Message-Id:Date; b=OXneDrgXNsgStS/EVwh6VGApGpMqDQtMu+ZKkGFwL7idiRh+7vDaa09MoaiPOlJQhm+Dyi1gWahv9qyTQXLEPJdRb2qGVvAqWzYzMMzdbM5xuMxR60fLg5nAs6+83xIcC3i5vL754X8khveh4yeDdytsNjNY7IFxoDCPi6o/g0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0G8kt8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0G8kt8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF842C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755716993;
	bh=Ro9g8WjjGhcM9E5b4bODiNSMQ1CTvXJYblxIp4s5Dqo=;
	h=To:Subject:From:Date:From;
	b=A0G8kt8K4uES8LIizUJx7MX0UqQ9P/3OA0W6AySMirlzbRQwWJfCjZ1sz3i0IVy7T
	 d65PglTleFcV68hZBrSqzm049w6p6sQO0Xg0cQWjH6Cx3AKgDPJWg4yJuKSFnsEby6
	 hZIQ7EHoNbg2RgqH/Tg3d5l3WMG/EIdaNsT/kUSsG03WZLcSe8c4Rgkj2FagXXbOro
	 MvSNaEaXH8QJVp5zsuo5y7tHG+Lq1lwSNhXim9VMlGJUWNRkARWj0W82RRIalpnxZI
	 yS1wtOCo8BGWzbvVuoE/q4aFi/AmQiQVJ/90vmH9ZoyXqp+rnegZT5Th8cDKzUecVd
	 AElOOupNfWQQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964F7CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571699359.8462.9468112075150577292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d45e1e62cfc604ef069f631dc0cb7e04eaca4f91515b5bb41509bdfb37e797
Date: Wed, 20 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755716993

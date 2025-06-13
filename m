Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E55863A9
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749819594; cv=none; b=abbTEc6Ug4hp0xV3MP3Zh/RijunOguA1j0S9asQMSt8ldJWU0AfD7R1MM1BU+HTJ194c4HpRm+p8oNWJk8Vx8GbvvcMNSIDblXb8ATmKkxiyaeK6KSI5duazxXh7P8qAB6JOt5/s6SZkUCGhz+b2ZNZalZRZWwdIiJklNI9np5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749819594; c=relaxed/simple;
	bh=OAfoVBatXsJIR6nBM7hZVh0YGFnhv6N3XQ1BwL4tknU=;
	h=To:Subject:From:Message-Id:Date; b=M5d1YLimRbmD6Cv+igKGh7hvQuRXm9KXuNAbUzzXz1I3o3CHLhbYmImf9ubgDF4I+p7owdAT/aWsgiVloq4NU5mwIp3RYPJCeBL7VQCeL/GtjO7KgvB72Y0wixxBR6RCi+n24Lm+UTD8aEhinbkbmp0vBT9zAwVpWm678RsEVT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBqWhQjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBqWhQjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749819593;
	bh=OAfoVBatXsJIR6nBM7hZVh0YGFnhv6N3XQ1BwL4tknU=;
	h=To:Subject:From:Date:From;
	b=lBqWhQjA2uPgJ3YLzJCM83Ow+zAF83/UIUJ366D5IORR+nAs4pYr4Rp+qHOmzJE3V
	 Jo5nGI3WQg5Rhg5OhjBs/VsGYaMyojwl8D/m9S7a9hbJ3Nvl4zAUiFawRajvvJtTTi
	 nsvnNrZBvs8gS1fRMWQ+Athg07jB+chcF6ktbFF+HvVZ0qx5aP8hWVPIp/nyiHhYYF
	 UWcPw319t1ujjrbuLmobEfz7i/9nU9FN225/2jefnNwqN4sI7PA78nuAJHnYUM7q5x
	 fr0ok5NMoqE+2eal/3qfwAziuu9X+sDtfMJAWFzqrAY1bjOPyX1PPvLTWiSexG6OfE
	 v3hLpuxvvRelA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90212C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981959357.3925.1860070980484133438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef044c5996adad2a066b57b274e688222d53f8a6dd65134ca19da6c04e16168
Date: Fri, 13 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749819593

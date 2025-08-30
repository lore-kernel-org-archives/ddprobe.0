Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1A1E502
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756571994; cv=none; b=G/hq210EyuN0dVtB31KigaULuC0l8+bIOZbCbF24LTmbZWHk4O5nXdN8FoXEnZVRNjKDnrORH1QMxcSmatzQooqVZ6XDWhmUXEtpZRSJFTxDAR3fMayp+EPrxJ+xK9xW8CuCHh+6xg0+UhXYFZBit+USrhn8uRIkjLMUrdlfr5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756571994; c=relaxed/simple;
	bh=6T++fxb5GhVy68JFdZRWDMLF0bxXfKtbw2pRnIkE+rU=;
	h=To:Subject:From:Message-Id:Date; b=RWfW023hIFO1bn7CpgSi70uJdgmq8AnNgt90nAQQjsM+zwYVGSV5+YjQPq+w4uqNFed+8ktg1/tuh+Y8n3YIQjLQlS6QPf5vBOSncZxfA297o+ZQiRkWsmv1fVKArndwIFTz0YAjim6vUzJw8aU4Q9xDi+XgaF6regtbWC+xaFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrk8aK0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrk8aK0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756571993;
	bh=6T++fxb5GhVy68JFdZRWDMLF0bxXfKtbw2pRnIkE+rU=;
	h=To:Subject:From:Date:From;
	b=mrk8aK0Md/zAnRXheee6Ea2CN/AXwnu5fQZML6tczV+gxIqKS28MJhp6KHlDWfjzp
	 Xlp0bnu/rQ1ZZb9zb8iB6el4SCu3N0SBGGFcPdiPk60dvPXVSSNNq8TdpxlSljNmVv
	 Zl+ZpOBxwOWj8wBzihXR0j7Uj+aWVUpLRABQK0iKvjKXulHsEHfyjtqg2G90/PEecn
	 hXFv4wuwTZjJnXbeDaeS8x9/UdS3/BSDEBMuH/CPdhvYBTlevoTe8ZLVHM71zslt/b
	 IQ+KlF+RMR63ZD5YNuyqjvuJLXzkKRblnXuDb6+ruRZYJVkUEOnD7qRNbDBXwH9EiK
	 /c+fkBNqbe7VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAECCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657199357.24801.11247106412759023326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb450ced918396aa3569ba12f1e323a95660b884d635b4260940641c8107959
Date: Sat, 30 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756571993

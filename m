Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293B32AE77
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728362754; cv=none; b=bqJG5n+7ibHy1DpQbji+I2JD+tMGZHRI4+blndQeJxDbVXEs39+X2bZjqCfljpiBQFA8gt4Asts7cU5cJxjUYNAGHJDGD5XXK8GBBGXI73Vv7+PO+v0mh75ZOOvUHLZYpZ4VTn4bosP3CiIyES66XqBemJfZp/gSy+vvI+Y0vEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728362754; c=relaxed/simple;
	bh=Ut3BY4zukypvEKZpPfC1Mz9B3S8jPhtNZPUT2Uukeko=;
	h=To:Subject:From:Message-Id:Date; b=qKgRXTmkfCu5kWbZI3vtLDZNHnx0tPFt0Epi5kAUfcG9t7RiDcF5z6cu0r/I9GRytEKnJ8XsSx8uKDyTXSgr036UaBFIosjER4LAgXjisGZpv8vIhdZmCdPqPRHFHJ9OilbGnlKYBxXgKjnWf60bAjEPklRiTfWmyC+Xwg2C4vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUhlh3Co; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUhlh3Co"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2496C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728362753;
	bh=Ut3BY4zukypvEKZpPfC1Mz9B3S8jPhtNZPUT2Uukeko=;
	h=To:Subject:From:Date:From;
	b=qUhlh3CoyG484c9nV5rjJtnm/q03kiH0w09tkh28W/+twiqwTWKkxWsfyboxWoqh1
	 ICEZ2V2Hl4UwZ3knpK55CTM3N8dqL5LpSNeTUSdIaoYnIULbGc9+je1EMSvxL6evGA
	 VBRD56WotrXst3acDzXTVANZrKbG2uC2rjSg+H6WCJedPImWBuWKOyZx/IN1DEElFB
	 0DXh/hNbr3hR96L/n8hJU5VwNY9AtKz/Gn/w7z48P4lVoE4QuBu6hnF88C0eqf3uvO
	 7uaC9vigcNNKfdYehsfKqRc7TpsJio+E9gQG2uxogD3f0NgaxJk2t0UR2H8WhVl971
	 Gy0oWR3PT+Sdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C430CED266
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836275362.13050.6842694236940999913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11840a40253eeb7bcc12fa1c424870bdf5633029f7921ccea615934fac2c0a09
Date: Tue, 08 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728362753

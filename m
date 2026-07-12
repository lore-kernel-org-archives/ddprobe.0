Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C93A194AE6
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783850914; cv=none; b=Na0nwMVILlr9Eerhs/RbcE/DNEH7tBvunkCUjMXFCjtTM/TwNDpAixeyKtoqubMyZStt2sWY/wk6C/bybx2KhpP2LrmjE3W2AS7x3add5mf0m9aGuoUYBI1UBQL9ebzemT2txmkZEzHwHCWAMM+wMDnmk5cGXA/QyTjlTSVQs/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783850914; c=relaxed/simple;
	bh=j8a7wpJI4QO6jeVAUlX3+JUwbqJcE8jWbTMzwUN0TyU=;
	h=To:Subject:From:Message-Id:Date; b=JGgTJ93ORI1NkmtyYzGNaYdpMEteUSCLmVitRRaWtPI2ferjpG7lYNZTyp5b5QdjHHnw8FkCpwKQV8e78pJx7sGee1Uf9Sfp8RGZgIAFZMVt5sRT/y0q+G4NRAZzQoG4MxrRmPCvlcU5OurdIqK+FNH8Ri5L1LPNqmApJvzezkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hiv3eFRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hiv3eFRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF291C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783850913;
	bh=j8a7wpJI4QO6jeVAUlX3+JUwbqJcE8jWbTMzwUN0TyU=;
	h=To:Subject:From:Date:From;
	b=Hiv3eFRIo2n1r0Zur70ci180NogpfN+7SHD1/W+bsT1LBDRm6b+D7LRM3VzOgzy5r
	 Zy04FUtHjN6qhCDjB2ODiJgmmU5A6YL8n0bUq0LuixwRGFk+1SzFKhUbi7hyuA4d+y
	 hVd9TyNjZmqhZ3UKSoiAaqIAiX50R4/HZmUN5Wao+ZK0S0fJKNR/S8QcgAFDYaJ2m5
	 /syENaR7soNlcFCfxQ9DtnLsVR8mi+gMKVYcy7ejqJOLEyYWQ7qS69o+ACCKuW8I9D
	 7IjHKXHly9lhtHlsSiOCxPOYHeqgVGsXUnNDXq3q1C6OqbbbGmpCw4lYeeD9uqhjXa
	 AV/di5DQBwr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAD7C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385091368.14484.3623051368464619839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83789ec4d83453646888bf21f2dafddef662a55ba89097fbbe30486d50a3adf4
Date: Sun, 12 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783850913

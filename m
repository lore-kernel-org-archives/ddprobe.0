Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4383929B781
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764258774; cv=none; b=aC7fdYBbBK5s2oFWK7MUJrjP/ZGgqF9uZs1G8sWInWt3EP07oIwOAbWs9KwDYM+lhTuu1GUtJZIWe9ladxHA8gujmZMHroFVxs3HU5WzW+cwwHXxtyWZkA45jR7oG8ZXbE4IZON0EHss2tBw3X97wPFishBGzZKm0DVAMfTkKnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764258774; c=relaxed/simple;
	bh=8Dum4spvnbmwZphZX7G4Vb0hbMM8fD+7C6oH+7bPCPE=;
	h=To:Subject:From:Message-Id:Date; b=hQByMIBcKQjh1pb1xS6CCsh3LpNwtnAWHZPqK2lwxOzVE79I5yq1iHZeOh7SUPXBi183LMPCP0xvvYFJbQ33D3OlmegrqR6ynXQwRj9aQPf5c8pix5ElxvH8+Wv1BLe2CIjWKnYq9fuB8F7WlvkTNbVK2eX14G5dK60x4wlk/jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxK4Om2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxK4Om2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE877C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764258773;
	bh=8Dum4spvnbmwZphZX7G4Vb0hbMM8fD+7C6oH+7bPCPE=;
	h=To:Subject:From:Date:From;
	b=MxK4Om2/fXSdFkWB/2dKUbbnk6279FSvtw1OuRbeCGGvWAzbV5dcfYn10gvUWYXJj
	 YP53PdltJcb43R1HBvcXfKZWox7nMYlvxWfKrEmdR8CYzJueK58Oki3SXaqhS+xRO5
	 gZ2722S3IksjYhbhp2706Bkf1INTjzvSewb4oFB9QkV6VPW6Z5kUmomzwiLpuIS8p4
	 4j1OLWXw66v+To1RvknvfYUA3HKXEyoWtre2UNhNc3bG29Ajtq5UCVbHshq1itvRf9
	 5lt2cmg6bgWEs8T2XDc8swFldQQbgwJSOBZ/8wMaIm4Xdv1f64w3PEoDltac2W1D8U
	 Crwdnf/SLIggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E69BCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425877363.16051.7100072856160648723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6e25addc87f162032bf42b52f6709f3a2d520448cf22fcc43a8cc825689237
Date: Thu, 27 Nov 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764258773

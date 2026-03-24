Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056FB1D9663
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774367094; cv=none; b=Hfzaecc4283AIBryomCngT6gf3aK5ibURsxjs9CbZb93HkUGpmk7ro089juWYwX0J0XI95hEFZ+hExVHB0LAb5CrlBhv145evXa7YAIXz/iGq3yhL9+H8Ccn61w3iK0cvIOLSuWkrwX7EHfKTVa6rz9XXZiolESv2MXrzpAfOws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774367094; c=relaxed/simple;
	bh=pJvq1yr37oO6F5HhEpqoY7PYj7Rqxsgn2kQPAo2tuPA=;
	h=To:Subject:From:Message-Id:Date; b=sPzpHxsOKx+Qbkk5UJ+mg0KiZnhBFRPY/OheiCTcq6Q9fta9ILVyC5+zMnq8jUvLHaxs/POehbCS5vEEkwMaFEIseDKb50x4Uygfq+/hZmXr6MUQHP+HJQdp9RCT7O0Pyb8IabGom9ypH5kf9qSOUk3JMLbuK92cF2bGQZDJsCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhDzaLtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhDzaLtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A0C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774367093;
	bh=pJvq1yr37oO6F5HhEpqoY7PYj7Rqxsgn2kQPAo2tuPA=;
	h=To:Subject:From:Date:From;
	b=hhDzaLtYMYU/PxI3xQpT7jYWTF2Ut38bnxIhaQPbCHQyGwAJJQCjy6butCTcsErsW
	 Ja453th7dZfIX7IhBAXYYgawgrwhe75jQAVk+XF7yBMr75FPwXio0fEonBni5IE62S
	 goqF5Zn8jrrOep1wE75HGxXrI3UqMpUxV9DjGROa+xbMHMFsgTpdb7+RcXl4Hu9sO/
	 +XwAUVNldox7DbWbuzMRNf6Qr+GoQ1A9KjbpDDoAeanPF6MFZRn+4QTj1Tvkj0HzV8
	 uJ8dbk4c0QbszJuakSLZ7OCtALD4We0h3GRKijCr6nGFQP2N2W3ZvlDQbC+rD8ft1O
	 huZCmRY0Rk4mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A5F54AD0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436709358.4640.8090640374067284367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b15e039c6b6af88a70bdd36dc0da914300abfcac17645005fbff128211ff01
Date: Tue, 24 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774367093

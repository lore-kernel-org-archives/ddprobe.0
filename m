Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DE0148830
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712937563; cv=none; b=WIFeeJ8aN4XHzgU1LfZIR+WKPmVjaHCokCAgws7z5s8ozYMLalriSXor16QiV4uTUchQvmRtlgWxTfH6ND5LhUrnW8hnFuKZBJrMrn3OQw3Gd+IfFGkIzH4ihQOX3aXYHlPxwkn7zJnhNh/wQVxh7HrIwVwpB55NWVDTEbFm2GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712937563; c=relaxed/simple;
	bh=E/DQK37yiuPwm8ixJvxMCSDYK3pYcx1eFIjzdoyKeVs=;
	h=To:Subject:From:Message-Id:Date; b=EWKBurYirXuz6KccW7iAknSAKEhItstCvemSaWG7tOoSVG1JCbwI2WjbTPGwk7TGWxMYepQk+w7LEcGHl3ODcA6YNUmN2CVDbcVsy+VpzsuxS6KNKviQk7uaQAn7V6NHFHhxtikH3Lft9QOeIN1noOasEUK3WaJCqJQcXSMyzBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HILjzNIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HILjzNIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54A6C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712937562;
	bh=E/DQK37yiuPwm8ixJvxMCSDYK3pYcx1eFIjzdoyKeVs=;
	h=To:Subject:From:Date:From;
	b=HILjzNITAIDHR6o+xtv2NeSwE4s7hrIi/BfFiuzlpTJUYVmMRyOQj8zflOR8IcyWx
	 mouDHcA8xAKHKnY1aOz3wL5vX0ssWeUsfq9IDpHJ61LzO+SVkg3CApAFtpJrpI+zXm
	 gCw3+uzh0AeGBFkSw8v3IjvxfGZhsFRlHIIApGZjKDv/P/ZSvc43Q1ULPniZ1k2Ntu
	 bbowdYRZNiwrZVhbJLKCuuVTB9HCEeBr1Qau2uF3KseVBCtjs1uMejDI6GF/26NqsO
	 +150WmfrCg3VbdhhWlNLLeRyeMkXdU/6rLJvD2EcelzO/IPTYig8WB97P9C3Q6ARfY
	 +rnZAA2UGVZAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4187C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293756279.13919.12332614245283496513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c060d283250b490a959929b849cbba7c8cbf9d73c3c136a928095b439c43ed42
Date: Fri, 12 Apr 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712937562

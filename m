Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F891BEF87
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746275394; cv=none; b=dLB5AsppiKYBSfa+BtEyKrbOmiyMsNYqD9DuSoqQSQPCvFw25mLR3baAGx/zRV5/OZvPrgPz8hzNpAJ+yy8dWGfi27HMaYYtLmphR8BfN3c+UIoi88tdyaCuiQ3s6QmyTQCkWlb6qxaUxzJCkRXq9Nm2HDyBXLg1pC/6Ks9BafI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746275394; c=relaxed/simple;
	bh=P/apSTrJ0/fClLYYoydcfBvaOw/hblwT/kZVxoc1IHI=;
	h=To:Subject:From:Message-Id:Date; b=pF5meCWNcRViOafX21ghEtC13t65DR4xDP0L12SKyUOxvtM8Bfszk5wxfRV82mxYp4Bt+3IGNYvljX80MXGnqTJDHRN3pLHpEF+ay0WMRcE7Hv6XSDcuAJBPn9xyAaJnr6uwd/GZ7X8jMQ8jeVtT9S9E5UMcLdMUw8K10xZu3SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ly4QrhWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ly4QrhWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72ABC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746275393;
	bh=P/apSTrJ0/fClLYYoydcfBvaOw/hblwT/kZVxoc1IHI=;
	h=To:Subject:From:Date:From;
	b=Ly4QrhWZccnGKeS7+d6dYCwGt3g0cUFhNQTs7EYqNugkaUO/5+A/W1O5iCsQg+K6A
	 VZ/UYH8Q2T/7WtC5yWu0o8pbxuAh1tmkg8YDIr1zHp8vH4Zm3Dxf+klxPDOYmpGYB4
	 KADEhJavNY9rxtpwipa1AQVACflwzTw7hGTnRTMRLFLI2IDxa768SG4jBYX1Ek7i5T
	 7ytkAD+5Ta7M55qwL/bUSsDz1cOvcO2rIa6w+gkLRnwvvA/OMLTF+KryOLEaq1tsw6
	 lCSe4MmQmHUZ5SnZ95LGzmDv2Jn2u/s2ObZ7JJ3mopz5snhlyh44rX6s2oSAzPjkdJ
	 uyjV/i8lRF9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568EC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627539358.11319.4292253779760633784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb66a2339b522a315d62b3af1e00a29084737d9129304518a359d283c460c88c
Date: Sat, 03 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746275393

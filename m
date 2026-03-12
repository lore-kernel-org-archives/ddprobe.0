Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3773C7DF4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773329093; cv=none; b=oKyG9RjVVKOu1UzbJOeiYQaNVBNoYV5P/cIKiO5UQDpku7+OTQqv4t1tASgKNTjIBeX5odNDisKVpYZEYhUrZ3UfuZ6gFm9sFNOtu+WRNrJTQkJFXtdprGKSEBS4YF/Z2GP1GYzLldDDJMPxFOEH0bQRG0FdFKN3QNEzm3PYgjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773329093; c=relaxed/simple;
	bh=itWUo+wpHlzufyLOeswKowpJjAt/hxrQaAtiUBndrKM=;
	h=To:Subject:From:Message-Id:Date; b=mF9NC4kTzoEUtoVA3MNCHV3IVx+ELDKDivFuJtZUj4tdKnMbs+CWDRld8G89ihB3en1QImZ5iRsigY5gc+JQxiTyCyS9clFSUyeGVHqqmvW11+Sc/0g/leZzDyGD0gFVw8vHbqerMmBQwD+MXqmvtY21RS0BPSPH3x+L94DjNbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNxlbo8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNxlbo8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBE1C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773329093;
	bh=itWUo+wpHlzufyLOeswKowpJjAt/hxrQaAtiUBndrKM=;
	h=To:Subject:From:Date:From;
	b=RNxlbo8Z/rCa+hpxZ8KjRNJofD/Wk/d+6Oir0v/vzPGlvfLCDJg8WbN7fcNarX82y
	 Sxe7hQzH58Y5JrWOWnr7hNgmrG/3NJ6HrkvTuccTtnlG+RzC4TSpLygmzclyANcad0
	 FCTPhFp+aFjQu43lJpQStaEZbfZnRxFhLCSh5xYliBG5Gsi9HTIEUGJbTqV6xLPyK+
	 xJuIwYDoixsWKZxZoiHluM85//qRfQmfHuJWu0WEnDa8ay7pFlyjqQjC8mFz3aWC79
	 oL+Lnps8QowlpLWVaFxMWcANYQBDb0Hn5xxqv0UQr8yCutf8/IW4g3FNnEHxGtLbCz
	 r8EXG73wrNNGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904241067044
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332909358.10528.17300054597187932242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1c7567f41ad426d12c31a68736a82b6d0f0461868320350fce286da284857c
Date: Thu, 12 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773329093

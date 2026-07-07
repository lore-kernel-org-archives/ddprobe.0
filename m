Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279B73101CE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783403914; cv=none; b=uLFLbkkOhM8y3D6lY2vUW6gFyC5/BPWGTwaBnfBopVPlZRPlei94aWLUuG5czn2dXy6GdtJUYKoMtoMw4h0nGlwkBspl/ve8w7m25QQvZJOEP4y4B/tSfsz3yNBI0NfBH9CEMTW0dBV9bLiZVdG/FjGvb2sUyW0WqBYrxLX6M2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783403914; c=relaxed/simple;
	bh=VpGnzeqSQHVWRdKvJF/ffqBEA/+7LyTwYM0RtikMKUU=;
	h=To:Subject:From:Message-Id:Date; b=dXwqP4sWpEaaqwBT12QK6aTo+fA3PU0OutshzQy9tmWei3jR3q6dKvLEMfv4b1bD34oFt7sZ6dEb+F5iPBi0ZT8U4xal5CpRHUwNnNuWmsQCUPY/TDi0aa0q7ADwCGAkilX+j9vnUvAY+xygenixq5tUdaF1kIRCVZNNNcAbq+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmkatHLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmkatHLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC109C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783403913;
	bh=VpGnzeqSQHVWRdKvJF/ffqBEA/+7LyTwYM0RtikMKUU=;
	h=To:Subject:From:Date:From;
	b=TmkatHLZPGRBtxpEC5L5tTAkBuE/gZLdGPu0Ehcw0HogPmQcH/4K5AU95ULoD/rte
	 e3bkhQrsfdxpDHWPX7yUiA2XNaE7g1q5O5Ynjpx6Kcu0m31vVYmUt1o/Xm/MQZUrgB
	 gPD2ntUaBHflg1OEOWILZE3WpDjoV2bivMAEDFFE0ibOpMTLijpBcq4f7zpWBYODul
	 tb3dmaSHGhlwD/CMIRmClZDFQitv89tu11u0e4krsHVi4qv1FKYs1YnhYWSnVvqYl6
	 xeHn0MZp6Myp4OLsZ/nuLF9n29ZuGXsa9wzsHsMXxgLNSo6/GPZK8glAXogLRYE+Kx
	 GTby3FqW0WPlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA49FC44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340391368.14396.2570288857564555081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e592569a96589ac8821817e2318042e60c57ff71d9835622aebbb2c4b460179
Date: Tue, 07 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783403913

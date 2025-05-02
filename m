Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1AA20C488
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746187794; cv=none; b=me7tCRZ0ReXDB+bQPTZxe23tJHfOyeHPY3ZO3vEFDRLbnl/w1b3+PL82BzOvC9N2RaznTo2v4WR8nfyFzDH2wpmTQ28gKcGEKIO28uL/z9r2QZwefMtgvCxzmRMUYN19F0r5nnc/gM8U3vMc0gdMDd58frrf5VaChlhY7W7kpT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746187794; c=relaxed/simple;
	bh=ef7hlbK2v9MLw9UlOGXIQdQh8+eJ2N1dY9Se4WL6pKU=;
	h=To:Subject:From:Message-Id:Date; b=YiP0vTE2l3T4/1keiFD/vmITP1qvfFWsGSYUha83fzl/ZkuDpiH1vVTI7z/m9agp1sK6A+2rB61T2/+3HV73BN9yqf6H0inxZx977fR28tyHC2a/BhxL450UhDVK6UwuE9uofSRVZ3bthjgPw/c5YwNDAobdRR0jdfCiL+x2LVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHE/yd4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHE/yd4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B67CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746187793;
	bh=ef7hlbK2v9MLw9UlOGXIQdQh8+eJ2N1dY9Se4WL6pKU=;
	h=To:Subject:From:Date:From;
	b=UHE/yd4Jf9AGmW8J4W7qTfXoO7yf1LWEgaITR2aHdbpAi+vxBz8EG11O4PK8W9CZ4
	 UhC0DPvpo8NjW9sX7uSOG/d7uzFBacxNtvop9pimgqF/sA3HSCFuct/lRPnIg7bDFx
	 3vIRVWMQbn34V2GUmCQ17wFaj/ijR55D4cbEspGOSpDjGnHdD/TtUxYuB7rc2d39yw
	 mmZ/g5oF/SFhkklMK8W5KuznLOByZCZQs5j0nrPGOzVkBFIgH/XlplFLHZnP4za3jN
	 Wmyhj4y/YYJcCLgx1W26ShsE7i7vVD5xNDrT7jY33GMOMY1lP0VBVlQoxVyD28tW5J
	 2McrYJ+8OKIWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E492C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618779357.18498.10181814883164018845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267d83df0f54d3eeeca52cfa4850be07e6303579303478740e09393ff8bda74e
Date: Fri, 02 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746187793

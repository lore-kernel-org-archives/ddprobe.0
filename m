Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36755221714
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741689534; cv=none; b=XDRAdVAFmx7eUGdip/mqVigIJAnA2MSZlTIYEvgakjqHTE/8qnHsjDnxBTiksi83ArYB9I2crlR9QZD0At9EV3NfsFP61vUNIo6w66h3VekwDZTdjDxC2l07XwerHnvNlMdx/c9EK6R8A4U6pk+3PgkIMi1INF1j1Sw7fDcRHKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741689534; c=relaxed/simple;
	bh=9E5SySogNIoQmVrswSGxUvfpq9iWPrEdIEbIEUgc+dA=;
	h=To:Subject:From:Message-Id:Date; b=azP8MLIRDqRmuRxi2/Ig6G6j0eJM4yXVINXsnLoZs5kJPEHvbODwxJ8XlWck2k7dArNe3u+fgTkjTxFRD5s0QzpNJe79VEDfcxJHlYR/pTXQe2L6naQtLKbnRbDxX7WiY3Ku8CGc3mC8qALBARSrjV4kVTODaTplpMZJrWAdV7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKt3HLzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKt3HLzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EE4C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741689533;
	bh=9E5SySogNIoQmVrswSGxUvfpq9iWPrEdIEbIEUgc+dA=;
	h=To:Subject:From:Date:From;
	b=rKt3HLzVQjBV7BHwD9M6a/aIJVzpNld7rAf9LQikSR8MRl2+zFCzPZW6VbK2Q4+0O
	 /N0pAM/LZkVA7W4R5aPoFKVselNdp+gYVrbh141Clph6r8l2PAAu7gGEuOXCKJqn3P
	 XGEy8B9ZcLZfd12AiJZXezyAVGhkI8swHNmdYUGWg9Hkbv9duOy68YRfPN5pLukG4l
	 h+v3fBrTvh1Ki1ZNVj7necMnEY9zQruhS8eefCQWYeGSmb/HhmtzseoRmFbg9y92JE
	 asqMXEAQJqZzWG7KRA4lG4gd5KLZA0pb/hckwVEgkes7v6yRXJM+FAbwNL1yfaqZ0T
	 Q7kklz66AOOvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997F3C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168953362.8122.2337868537068358055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5edcbb5c21ecaa29c2dbe5a88d67460108debe200956ef6af21c995bb4f522b
Date: Tue, 11 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741689533

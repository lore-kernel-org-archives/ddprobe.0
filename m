Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D15B14F70
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777132054; cv=none; b=H0QBcTfTrEBEhzhKmQl6ll1HkS44WjcBuvVVMOEAB1F7fjOoJX9Mm9tT4OzYXuwaRNMKTsh3QaxkVFciuNT1gnVFKCI9MBebkytfE+y8z0s4y/vQAaT69qYzUn0Io5yJfvv/bGAPXsl0XDAonM5VyjB80dxZtd46dzgH7JPwzPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777132054; c=relaxed/simple;
	bh=9/bR+tOeYkmj+WMgZxpXZPkN0kc5kHJwifuUX6dj+b4=;
	h=To:Subject:From:Message-Id:Date; b=AN+b1yp9kRXIYVeVN0biZFBw3KsGvuQvRE/C18Q+MHqqeQfzJKwfqaGcTeJKpBMI1axwZWLz02jFNQESyHqxbtMqQEPSwiUBSjO9thjyey+BlRWXajbLk5k/tqW3pD9iqv4WM2c1ObuHEAfIYZ4jCznetJVsOc8p4y1a7ghfqRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7U5iJfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7U5iJfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01AFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777132053;
	bh=9/bR+tOeYkmj+WMgZxpXZPkN0kc5kHJwifuUX6dj+b4=;
	h=To:Subject:From:Date:From;
	b=N7U5iJfNZi8/yRkPUq7UrgLmO2CifEg75pdL2mRAyYlzBCecQ4mzAF0OK65HprxJI
	 KGfZaRGmpbAdpTpegm/debeIDyK1mXdjEGarthHk+RLwdgGzlinrabh+FZxaAPWOeN
	 CdbBezaCs3MIj8mBzcKdumPsq6RviCN+3S93iuWfa36x++kk+u7PkP7wO3JsU87PeV
	 cG06bF8h6Mol/zBLDnrUQjf5/N1djM5+0d+N1UCUV9dyYc++JMMW16DdIBplXBnjTh
	 DHXq6Wqpa7FiNoPzMR3krqY9V+hIYQphDlcq0JR50MHj4BwtcVENjElyrBNPH7NeRb
	 KobMJ+9MQ5lWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEC5FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713205368.1361.11222225145555547006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1ef02061fe61e576aea67b72e076a22f04c16f8db14a42057d3f6e2d64e324
Date: Sat, 25 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777132053

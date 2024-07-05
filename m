Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F3213C8F9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720184123; cv=none; b=Ph0aJhJzxmYOoS+tVfagdB/jXBsXRaXLKr0N3P8Ekg0icgjhbm/GrqlSv463J0kBfPkhCc2EDy+Ho8jSyI/O43EitDE5rf/10KMlsDwXxM654Ub624aTz0OsX9GipXDMlPDK5ipIPrbdUo9XqA9sBEMlmNEYzBIWJkxoZRxxPmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720184123; c=relaxed/simple;
	bh=frImwRNTOCMzp/WbbH6DELvoAA3Y9ZyhxOv6Af1U1GM=;
	h=To:Subject:From:Message-Id:Date; b=oEIfI3EnQuvVDwLbbfyUhqn/T6HHG40PNU1lJY0EMjIh+kHyEdPIXTd+KcSOK5sQsNcfPjEDPRz2xbn/WEnsQR1JtOHhJQkJ466VH4BJCC9xEp76LMGhyrbp8zW+gxuviD30GrN0yoWAnzy0YBmXDu1iryKYF0Pg4s9yy4O/lTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/3VbKp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/3VbKp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF812C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720184122;
	bh=frImwRNTOCMzp/WbbH6DELvoAA3Y9ZyhxOv6Af1U1GM=;
	h=To:Subject:From:Date:From;
	b=J/3VbKp2aiMJd6yUKxwhfIK8q4DHLXBD1Eo9HFAimlIi3AdX9rscJRLDT2mxH2ezG
	 Fnx5n9VWyPAHjv6hIw/N+3BBnDTEZafLB6YCiNsVxmDun5yvYy0nrBYjxgr6G6d8Mm
	 /mO/ATja1xtFP+VLz3j83TgoMk0zzDj1Dk1X4TVrMq0+TbKGc0GxFLLhrwNEef89hJ
	 dt3rY/qSw1AZCc7Iq+Ld1BKU2XhoS9oipdv7nv9XS8FPBkTegkclKLCh23IzQVAf1R
	 AIdX3w1+cbVypUhvO/4Uw0pPjVJ66kNPONgEjpDTv34U/BqjLukSHzHxXtFjaZ7xJj
	 5Di+WGkDmPlHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB61C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018412276.21706.3005134527885381682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c4baadac4cbd774229258da531d52cf78adfdf17839f45a4327681cbf3704f
Date: Fri, 05 Jul 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720184122

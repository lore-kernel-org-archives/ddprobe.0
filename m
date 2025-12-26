Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B90A2417E6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766767434; cv=none; b=f4np9/nyvwWnqZqfHt6y7aC6PKNtxxmnHdykQv3o7HSdrDQp5zqLTOZ3KPvZHT3gBRHEAkEFk6qEg301YFvjPWwUodYKpbH6xb7jpGSvkpXCy+hFEJ0gW2ZxN3kOztaYki8Uh5Ux5ONxW0qmxErUgtPj6e9BFLyY4ymNq1wUo7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766767434; c=relaxed/simple;
	bh=YVj/fyyBQB5CuU80W3h+++hvcqU4qWxJvQdJVFJJgCo=;
	h=To:Subject:From:Message-Id:Date; b=St1e/lD8+KnwZAcsoV3sFdbLbNy/2s4hO9Q/cBpHUq+A1qjKAD2jfO39EB/I16Qwc8ycch9jHFrUoabroXimlogE54yns57oYK4XspjFTUkIrM2AvXoTaScf8BOBMWN+fmy19cnCkWYLwX8cDDtVtTiTY27CjW4+TOEO8bjCIhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgvPFcye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgvPFcye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA88AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766767433;
	bh=YVj/fyyBQB5CuU80W3h+++hvcqU4qWxJvQdJVFJJgCo=;
	h=To:Subject:From:Date:From;
	b=VgvPFcyej2I7U/gj3Czf9jG1TkB18qHR8a7st4J242wyTeTHlAw3TMtKUl9bri0H2
	 BZ05sOzCBCNVivguI4zArg/GOi0ekxHdw8gbMVtLFFd1133Ez61XdsK53jiTYBmhF3
	 zkixchVi0PNd5hzc2Dr7givBL8UpbCO9+7M10F7rxoN0eWc5bQ05KyushqSVel5yLF
	 yZgCMZU6/jXTSKNQkIMqWVCO/7yI4+X6Mvd9jl/1AaQDWDVRCbu2MpGCKQ+X8IliRE
	 +lwpos8KHHTtzJuGvSkjPpNzgTU2iPxFgnE8VaOFpXi7P3zAKP5Bkybr7PubXM2Euo
	 B9ylrRXuTQODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97834E8FDA8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676743361.10813.207245708624033769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3572e287cb36d4ef9d4378d9d79bc949cba75002b1747145051d4508f89c0d5
Date: Fri, 26 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766767433

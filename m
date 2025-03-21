Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405931E5B66
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742527794; cv=none; b=bRnQIyWL07bpxHCdljJjPhpNi/QUl3FWAFO9HuSowVX+Fx+lY2K77bbFYp3VO/IDENefqrtQu9dqXiz0aaAdnme1ANtzkgEqSDShq8x5Ad1GYUwQFLahB9m1n9/oWor+1PgJMI+fPRlqtAJR/WLEW3SNz5fU/uSCp3fk83zCLfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742527794; c=relaxed/simple;
	bh=Nrnr4rUuPyf5pXQY+nB3yl5XAxo0bk/3V4gcQJt/O3I=;
	h=To:Subject:From:Message-Id:Date; b=fjfjq3KGiwn0Cq/uiI4Mva7spY3rQDPsnvVVjm7dfnoPp4iGDvQOlbuCdJw37EF0OjAyqgsvWfUUEWU3p2umj6QegubMRxYCbgseJcSog3k0vEHQKJ8ZYlMeyDLBZ0oRkNqGztNMvWjJqzeKgXmXpHwtp3oHv9h/8CAfTGmPIZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHRupbEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHRupbEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F1EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742527793;
	bh=Nrnr4rUuPyf5pXQY+nB3yl5XAxo0bk/3V4gcQJt/O3I=;
	h=To:Subject:From:Date:From;
	b=HHRupbEoqvLO13EifidQ481TZOct/aFxRi58Ek0RgzTnGU+eENDO1/UFxMEmTkPcX
	 A+xfYQIPL0a6r8pkU14tERRR15KcfZMDAQFBtEgY1dURjGtmN16r2o2WDzQzuUj8ay
	 JBrD8iRoC5QcIreK85qnz2KCZTLyI6a4ZLyXfQLYJ72ZjdPjDb/gP49mbWu9VkQ6CW
	 5oQOR97rki6hlzPCbBcmgwAw4jOGG3SvqeasqHs70Ab4L5tTFThhFdIQoUcsghCxZS
	 A6xushoGtM5JILKlJMjZzjL83URybbAyycOh32JjZK8H+P2pViJoNpOkxjX4JawTQi
	 DyF9pd80+m2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A4C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252779368.3210.1807150646204301709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11298fade66935cbeefb9be79e958eb198212d9976b38c90a39cdfee4edcf561
Date: Fri, 21 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742527793

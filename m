Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A69222575
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769499834; cv=none; b=upNkDqq8fS5r+H8AKgFUrIsNFeOosmSbZhQrDUIfQNv/bP1fv47/0DyTy0sZonKz+0aoY2kMqcr/eWlKWhnHu/1sDtAXOfbL98rxvnppckBCMOQxNHW46b8VbjnCa4nxhelHm/b1t7hU+AU6aVo3PY4XKFdQxPzIgBIN+oi6jgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769499834; c=relaxed/simple;
	bh=+osGcQqTUKUiHrTmmGNQ5Es+G+jeVOjS9LAvb98spss=;
	h=To:Subject:From:Message-Id:Date; b=N9BSnJHPKxQ7NCmkHA+J/P5YtjSP4iQIT8xe5lJgpmNogQ/VEVW+mxlpBxFen2Zj4nmelhPgfWRf8YB9J30rl1XLh5HqtQ3fd3uMos9EyCwy6F92lIBXrlk8hklP8DUvCrU9Ho7ENAJ7FpRQ2M5OxjXi/Rbadk2Vl8yrhcY8eJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StKXGhMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StKXGhMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC38BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769499833;
	bh=+osGcQqTUKUiHrTmmGNQ5Es+G+jeVOjS9LAvb98spss=;
	h=To:Subject:From:Date:From;
	b=StKXGhMbpxACNWqRTM4vFlEEqfWWjziQZk7Fp8aEli6gSBFAUaZqj4dSWlSB1IuZK
	 px6L3aYWsaXeQMJiOWdFYhFK/BqMxknGJQy9Chis7A/lXfVG2EsDOOKbg1p2eTv4Z9
	 0zqhmi5hrp4cwR8sSbvGso/wSMXXoRS927VDZnebjpIxJD3eDDH2goXz+2bpSQGIg1
	 ek40W0vs0FoOTrxbz5OOqrmZGTQURRzvOF8AFdYN4R4OfGmUDPIiD0rTC0XnvDdXhG
	 AJfB+piUx3SHxC8meHDg8eHKkXxJQsARkHD0xEs3sO0x/sHKsbBzDNi9RyV8Hxc0/L
	 vq5aBG360ysJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABA7D2595A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949983362.2481.10768409509342520372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988217a08d0d693c22079d19c6f0fd0d67001c06f8ab8e3314c61a304ce645f4
Date: Tue, 27 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769499833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71114A62B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763749914; cv=none; b=HLaocdV8Mey5NYeHdkpvL5ozmhfukAcVYOKWmROpAH43qAroqrmFyYb/ay/ch1Dxp6PolH/MMJCjraLkiZiMkEBZmXwsXz3dv0YDcGXBz9uvzPr/9dpP2oOsfV4tD3mzfEOygsl6+3di1sSUvVk5V5i0bY0dVAJFageq3h7LqKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763749914; c=relaxed/simple;
	bh=/XnVuE/m0uspIfmOKstpIHZhvMOMuxMEOD3Kb0CrKGw=;
	h=To:Subject:From:Message-Id:Date; b=QQQF19x5onmEuKLuWoOYk0zd393l77Eae1AOOdLTtgGcK/uMXd1jW6wV5sEeQkHvqp7qQq03UDC8TqO2iNcsOUJrZuAImjRoSfMnXpDaSo/sdX1zk0Tfdflv4MpyYESZ2AdDe+tZhrBUQdTwbW09Qpn3IO5M9G86ih1j4uZGAjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3fRrXxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3fRrXxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2401C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763749913;
	bh=/XnVuE/m0uspIfmOKstpIHZhvMOMuxMEOD3Kb0CrKGw=;
	h=To:Subject:From:Date:From;
	b=t3fRrXxJHy58/bxEkIXiY7f7NzMug1pEo1fKixw5pQfz+rGzKVzNEO4p/XA2jC32X
	 YVFlpRNx2sofIIBQFDcHzeWlKp3HPiy0AoYR1ttQ09qa66ZqzuH4OL+2vSEdpO/krT
	 UWJi3r9up8zWKt3W7WHSrr9GXmXiEcCRX0D1zVkiS1GROxbdbPh3MQQD+VybpsYRn9
	 AhZ7TLqAsM1g7eAEeqpY7HbQYFR18z70o56As2f51QJyxXawbqNJFRv3mgoiI2uHaL
	 KgyBtmrXdxPs3lPGMA3mnGCtT6+vGi22sjjcndIS5kXUehFC3MtVw1tSaQYTIKWGyN
	 9qW2Ar5B3dcKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153FCFC29B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374991358.20818.18146920918808219124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119829ea2a6c0ae8a930e19b1351721b04a123c649fda33b3e6147133ad63373
Date: Fri, 21 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763749913

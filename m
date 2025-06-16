Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0286714C5B0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750116594; cv=none; b=tcKd5MLlmNPb8mm0Rdgo+TGNGgQ0yqniBIYTAHSy9bKmJJZKRkkP7vBQFjc9dPBT6piY4azwOmoAW07eNX7NT0txgfbpWLTRLrg8eSMtDAUUCvzraOgvN9iePgU4m7CDrxPfdF4iEdVE4VoBV1FjIIjXdj/u9nNwSkt6EVsInS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750116594; c=relaxed/simple;
	bh=SfUauazQyd6BQ/6qBE0w6XLFIsIi9o5vjx2cdqHgHTE=;
	h=To:Subject:From:Message-Id:Date; b=CslpOVcut8vNoPx2s/pSd9xQ/L7QxL7pW0ja7NAxVOuALQFi/JAuSo7n4SB1u7U1kTNNhsOWBHVTZ3NslwOOdIBu6TiBCMVfpfSlMeGE3vmYC5voIIbB1GXQkB0xG1EKfM2kZjwc8AT3Ga6tEZReXAxWIbd84v4LKAhsb+oUoeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej9J7hZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej9J7hZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC532C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750116593;
	bh=SfUauazQyd6BQ/6qBE0w6XLFIsIi9o5vjx2cdqHgHTE=;
	h=To:Subject:From:Date:From;
	b=Ej9J7hZ55AXzjpeiLBtpfEQfboWr/iqeOTaSArLyE8JuC6li/H4QFdKHVhiQLHczW
	 LmRVkYmG7GjNucjAnqqXA3jNd9rxTz2XHJ8HIHsQnln2fIp6JJBlMSYQwhnbB+GOa8
	 1etti00o5aVloyZLcq7JSI1J0Wd0zmEFrDTbWd1+bXLCVemeP4/rHbeKM6PYKgIh05
	 nme3Qxc0dlB1KW8LZUIyGkerJoCu+wN2tSHQ/DUMUyGB+wlPhL9OxLiK2PTDNEspJS
	 +YjrfJW2t6UDjI6Ii/NVk1oZuLLfjVrYiT6KgO8NRD8tABwKTpfbbDrSJ7cVNOkoVP
	 5UDFhxK0LHJxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946FDC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011659358.6282.8088593419929987297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45eedea85fa0db6a73b01fbe057d97a002bb8fb1a87507226efca3079997f69
Date: Mon, 16 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750116593

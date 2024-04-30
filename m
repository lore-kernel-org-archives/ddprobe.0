Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610041BED65
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714512743; cv=none; b=BbmvcTZ0OxkY4R4xoqu2occCFrwuj1azWGr1QO/sfYfZzIvjKpOgZ73WmTvBBn05o9b56ba7yCX7hpxoZ6hTO9Tl7EuK7Em4r/itLbT5kU2b3FgUvpjqpGG+wFckKP/qns1P/v0SuuMNjjZTzcxmaEoN/vOBgyilIWF8sUKMDRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714512743; c=relaxed/simple;
	bh=A3i+uxPCxKd006Jg4Pl9b++KEPqgcX0xEoCZpfJuUIA=;
	h=To:Subject:From:Message-Id:Date; b=sCY0Au3twpN46K2m7ZKo+0xKnGqRZ8LO3R64hIjxfmgSP7o9Dirjj+mjJGU3z+ynKkbcUMdNTfRPzGUvgBfwf8iqLbOTV/3KkknyFfdJEzrnETu/0dfJIV59X1C6hIulp7fBRBWnIY4CWVioR1N4ArqloFO7jhFMKdkx99UP8js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdhI5b0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdhI5b0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0D5C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714512742;
	bh=A3i+uxPCxKd006Jg4Pl9b++KEPqgcX0xEoCZpfJuUIA=;
	h=To:Subject:From:Date:From;
	b=TdhI5b0hQkNVDB/xWMmCoTNCrePRXxVltgsAhst8udBIfJ0I036aSoiXZYJvYqNjr
	 9JXLF3HmniJZEeHLn5xAV32/+8sleTGaiuA2IWOwIMEEEG30tLSlNVzb7yvwRlvbaI
	 4PtUAeTHGq3TEUIHOgjOMOogujgDnV8zkYf3ugf73rPb7UM/wU5Cpfnzyr04vE8eYw
	 lJAe9xrVZ2ZrgBGYUQImthxzbzYC0fQm7hkP6yaqfa3c11M3C7Kc2dYq7/Eg6PT8H0
	 ZcBcbX4Rk1bQx2/naV/wgFtHiyl+tYUyL6aSQxc8eWMDujcgFQASrvD7vrSjEj6X6l
	 oxts/ZhW0XnXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FE7C10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451274284.22220.17092028454835949283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c81e5cd7cdf75d4f3f6419b55b151ae17f721625da0db9ab1c237b03ae85052
Date: Tue, 30 Apr 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714512742

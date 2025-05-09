Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECE926AAB8
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746772795; cv=none; b=fJFHIVexifFapuHdDfEOOOZV/gPon490Rl/XMzbiv09NhRQkEM+YzQyYmJUOhaf2ZTp/WyaauYkEyzelHHV6llXSCJsLAacSn7q/8EuDVX219eFLkCzDZTB6crgbLyUb8v6XM4XAiVlKZMaG7HhgbZ1ApG4+yDJu/fx4daLorP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746772795; c=relaxed/simple;
	bh=/xppToZRTeJcZ0mz+xbUvJTKF3QNbW5b/L9CcBcf/vE=;
	h=To:Subject:From:Message-Id:Date; b=fVVJZ3yEFdTiaKWi4aRRQCVhO4SkMjmPWKlPuSqNmAO0t1PTZLx1aNgZmuI8qOHLEFo1jwcX9qzQUe9tG2vZ3qbdKQwjdu1j7f1GwZqT2bT97nr9WaXyKw8lp/xoORTD8lUMVg0ygivXsfY04SGoaLLomeXMLcUVJXUZX4hZ07s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfOuxqZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfOuxqZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D84BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746772793;
	bh=/xppToZRTeJcZ0mz+xbUvJTKF3QNbW5b/L9CcBcf/vE=;
	h=To:Subject:From:Date:From;
	b=cfOuxqZADEKGWJXsVCufC43qrWpkaZLZsGK2/LPfiRJTJSMAu4jU8vJ/TPg9EffWS
	 PCgHATKBFLoocP71jopnVkIg5m7UJ/UM3Cm50zYjwDJiGr889gdb9bikddVLxGIkI7
	 XQb9VqhLvTrIM7XF0e6qVjb+5gpedTztM0PYuB+CKTmtKa03zuGCMvIe4V4o3rzY+W
	 TZ/9SG6adtu0hNvCEVQkcbI8sLUkyhlndDGIMHQN1aNDg/9rC9eHJHXyx8T706HQcZ
	 UlqTvp9CMIeQ0dpvSZxj/2+PmJX0RoaVjxFJ5RpAh85qjpsEl4nFZWSUzwmPqwnKsc
	 Wa/+cZPTBS1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59AC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677279357.5708.6683922322909654759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b095621f0e80e288b58353f1720670da546fd9d427b33be4e64fe6be1a53ea
Date: Fri, 09 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746772793

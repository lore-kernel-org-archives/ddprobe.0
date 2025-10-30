Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378CE28314E
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761836394; cv=none; b=himz5fI8B4e3cXPQED6ydjHtT8PPlteUQ/lfpHH0lMihpbBVLz+G7zpMipkD1Y738js/NUCLHQlD27M1w61Pa32wPaK3WTIyD8/msS6Boi5bZaICbnr6nQFzLy7xwJA1pWMRgsu/OQuJtLGCvgfXcvZKk1XaVnPPTwNwTpkzIrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761836394; c=relaxed/simple;
	bh=73epHW5H0AHYYrves6QO0/W9pJ4OIO/l4mK9a6a4YyY=;
	h=To:Subject:From:Message-Id:Date; b=PdpR9bSjaS9lDGdQUXeGJTZLep6KzaA3xn05cEGxulKmlhcMVMyLN0m5V27mxC5/5rJquKMfQaeuIcJEQU/NHHW8ROMdJ5fPDcado91EvhqPzYAEfT0lxq7YXNMg7d869Q1XAqPMG1t6Wf2HNiLgCcSemZI8Qy338eElJNqyeV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzpQfDgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzpQfDgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBE2C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761836393;
	bh=73epHW5H0AHYYrves6QO0/W9pJ4OIO/l4mK9a6a4YyY=;
	h=To:Subject:From:Date:From;
	b=RzpQfDgPPv9um/NaRKm9HxubyV9nMWCJoXu6uLM0zlIOWEXjH34TMjvjOhhk7/CrT
	 3jD9vDWJ6Daql+g/4zEmNUXIlC7Yz6Gj/YDwYWEJbusakjzzl9lJsGH4bfdw+pSHQZ
	 sQI+RK6AosIdzWGOKq2koz9ubjZ0LfcGvs7ibvpBF51UeE1xgSuIpFbrCfuhMCAcJ7
	 1GkxAacZBqQOfSBFkkCDtZcKTy4qCrefYnD2AVQ/wVg5uM1w5yfl4NSLpBXVRhoZ15
	 EaM6jiltGu/HfcoSlhl/uXZj7AJTp+x8r1RFM0p714H/5GetFfL50GJ1q/N9LQs/NY
	 aiQqEFsilT1Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD57CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183639358.24921.6046865892983128875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79b95a8a95cf1418c4670c81113821e8353137ec0f66c4c5b6ccac4255d5d99
Date: Thu, 30 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761836393

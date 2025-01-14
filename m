Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF9E29406
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736890554; cv=none; b=STeCl4OXvIcCpqQAsoqBLwKGLT4tRa8SHSnRH9hTU8Zl2h7Fr1OM6zhRW2uYIUJAR0o0nk2y/Uv9HxH9tXTcj/vS0hYeEGK5kOVRSBlqDdSvnYL4DRgFGt1FTA+naP9+U4tbbs3U4sIZebuDyALmnODPH49OsigBYcyT3vDt0vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736890554; c=relaxed/simple;
	bh=NirjRh4Vgi/rZ6HQ635qgPd7gUdfPC/E4iANf6iaaAE=;
	h=To:Subject:From:Message-Id:Date; b=BHKRo2SGMuZ4t6fU6T8aOBJkqx+tHR3/7M16/U/ZApLtL405I7k6Z05VJQARn8O/svJdhrCfr1ux646AFgZdUhtc/GOOsY+r/2EFhOryLtOjpDo8AjE4lmL+EPIEbbCkL4tJg1ASThCi7h0LV089jjZ6X5C9WGeD1VTR6wqRzpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZXI5T0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZXI5T0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A867DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736890553;
	bh=NirjRh4Vgi/rZ6HQ635qgPd7gUdfPC/E4iANf6iaaAE=;
	h=To:Subject:From:Date:From;
	b=YZXI5T0k3PG7RtzAWJxagoc2v+UCONTBXJH2Z/Fbf1WmJdK50nsoLS+NUxWkjpWlx
	 WP6IGru2kEZYJ08HiTikzJ7hc/cvLvK4R4wInqVNqzmuT7qO0t+KnUbXLMQcbou22P
	 251CmDcDAVW0TKADBajNyvInXcXk5UALyrMqiOfmTm7GU1q3qOqQ7W68w2bT5nVp8n
	 YXHiXLvLLlcxYyw33fnlWbxzsUAkwpOulQ8vMz3My/z11t6UcZYJbHtqphIFPeF/EF
	 kdge0Yke+phJZ0mjUunk/H5ETz9J3V7pXTjDGvaSaiUT0cPERmHRd9SsDOZ6Uw7Nm+
	 nZ9MlkTi0iHtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B18E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689055359.15299.6046925820489257105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757597daed2d6b3df1b03c26a80b45351ddabc7a3fee7661d9bcb8aab08bed4f
Date: Tue, 14 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736890553

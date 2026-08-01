Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FECA23D7F4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785626434; cv=none; b=YdXy2gCQGPQxyscqmaceeIeUPZawCerdDlMalmWfyJm8aiaP3hsZI5ih6PeB+JZDug2ihi+76hyJyPyTG+sThzLtsFrtMC3xzM4UKBzj765GS0/gth29VpDhXD+1bTz6P6Kek97MmxusZmnEoYdSIBhvbkrs/gtfWqED6KBvQhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785626434; c=relaxed/simple;
	bh=Fhnhx+Wm0cdrEzNoWTQxrf5Imdt+MeALxmP4EOGfW3w=;
	h=To:Subject:From:Message-Id:Date; b=Uf/Bous+EjXTMQzTmY1GGlgJLxJ9G/cYJpuUWiRlLulQVzsFsaR7BFDpQjuLvLBunFFMcz83pX+owy96/bO0SnU9Rbj9oRaKp1QfnUUIzC1Z1/TUctIF9l8KNm25/uftkg7tL3pyFfEKWIVketlXtRnTKX4OvLv5TsHS6jP+jWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfJX8PuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfJX8PuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CAAC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785626433;
	bh=Fhnhx+Wm0cdrEzNoWTQxrf5Imdt+MeALxmP4EOGfW3w=;
	h=To:Subject:From:Date:From;
	b=UfJX8PuPL1gtvwavEzDWNoVobPiq+t/Rdz45W3D9mp1wt73qkPigjPdAwbkEYEpxo
	 n+ssOHLyIZPszWH1gEEsG4+5kMVbaoN+tsJPxRMUU9F8jxTmO2GE5MR1+a/PGZshZ9
	 ZV5idY5fcvYybBrXsWERZWvgyGGD4GVrdgDQ0KVgMoF2ZkBJsEzrTlFD+zoBHsi4Jo
	 yl/FQnee3ndc4StN8qzZE1STF30CUCZVj8YrHYV4Ko9JNHxcmYKmA49ufI7UTZaoRT
	 DYfts1dm6Knge6U6crLn6wEe9o6+m4CpKWnh9k09DjWX2Rv7iczattBg2KkCsE4B9Q
	 f1WkuZ40+HmlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D50C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562643368.8000.15224242540106031856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e223f8991418a32b0f184481dd44782b393f6fd6469a380ed712d8cbbee997d6
Date: Sat, 01 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785626433

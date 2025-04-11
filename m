Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C5B2586C2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744408794; cv=none; b=PZFzQa9AQSd3EwOF4hhVX+xfGKjPH3oO9DMs8XYB1xLAn/IVHWu1GEMs1SAp38IBt2rCRH0ZWvo8PCd0OeAwrcvs9nwlnwyRdlcmDhi0Yg81S0Expk+Y4hiWXqDX6Ym/kkT8HSb9OaLoQAYokS8HtHmkMiQUWMCN8bdZwCzI2O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744408794; c=relaxed/simple;
	bh=dG2CJKs0Sj4pXMiJUQWah/nMWcMkS1He6sQ5IM9APpE=;
	h=To:Subject:From:Message-Id:Date; b=hlMQgzBmYoaPTH1l/kRumNkg5btTn+MtjMi4YmsGSQO0QBfGwvAnFnCpGcl+zlmFd+vxIiIA2cwipNDbmuLuysv0LDW/tCjmuEAazx0PaWDE+QGMadmvLTKFWJVLw/gtuYf+dJeObM0RXWT3ECacojwR8/oH3ngMl+pf0AOaqxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLCZZ+AQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLCZZ+AQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B233BC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744408793;
	bh=dG2CJKs0Sj4pXMiJUQWah/nMWcMkS1He6sQ5IM9APpE=;
	h=To:Subject:From:Date:From;
	b=YLCZZ+AQz8EPiNv7FT9nZdjQKGdFTB2f9UJ8eR9dK3V8KClRthhw/N1453o4dUK9K
	 cRWgIH7PXPKXCQ8qIRjCDfUutsjBZDhPDIaT+m2MM1gh/e+FnTdydzFWVfbn8ed1nV
	 9R+lcTkCYrXtWFsO9MvuyIL47IDPLbQV7gZWYCFohLYKMtBXYYk7VEstvpcXEBu8no
	 YYwx+s284i/vRYGQnkg8eaiRa6tKNVHb0wPkTszuqTeT7E2zfDeziR7IHd3ENhNsPG
	 Pb8eVBoXXD8g+GxLjnam0oemXjw78H3LNpgs+ZYYFXQxNdmeJAIPkjyLnkbmoLo6df
	 eyzv5xFQKTrNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B55C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440879361.11408.7177217330813983076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e00aa32261cc73ef74854a789e1bd64e61c6d4ffca54fa67491fbd70c9bac9
Date: Fri, 11 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744408793

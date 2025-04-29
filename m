Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC92248191
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745945993; cv=none; b=BGjr2X9WLikVQ7f6DPlRTkuAWS/TogXOn/nBm45r4mGr77Dzt/RW78AOCmQzy0cZ5l8mIYF++ycmmfnTiEJqXylqZLdvrEvFfvWMfe9+QZc56vQQ7GlzWhi4jjr4nMm/zF/SnhBr3FcidaKmt1Ke8FLNahPJTwrmHCIqw8VNGX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745945993; c=relaxed/simple;
	bh=cLwfry0j0Ot0EDpjjIZpthqNkO270jVPhyBeiJzkVNM=;
	h=To:Subject:From:Message-Id:Date; b=PRL8P4caA0Z8DLHTHT14GzlmmboDwIhzVB4clwEzvMWZxpzfE+/dwTk/Zbbg25nYcube9eJlIu3ogmNmsQCMX+Z69Rb4jtyZcff1cpP9adRmoxvNIberfgpB4kz/VGHUeRDHBOP7De2LfJJkKpCtPPNGn5AMv4YPH7hFGba6Ai4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBXYRqpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBXYRqpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBA8C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745945993;
	bh=cLwfry0j0Ot0EDpjjIZpthqNkO270jVPhyBeiJzkVNM=;
	h=To:Subject:From:Date:From;
	b=VBXYRqpZc31D272E3tc2NqLnMdSUa+e0oig+DuC/cNGBmwptr07dwDTKs49tH2EqL
	 VIkF546XRINU9WQcrrnCYefI9vraYIn1YzFbrg/wvlrqvCwP0mzwSOhPfDp+Y52fmM
	 fT1ucxYQMJM3EHpGXfT57/p7Q6sQdajs3H46HKQwhHhzhniJ2QStmug31GUB+GsT7J
	 lWVGEoH8QMXnwkYrWDH0dh/FqWFoCnVwYyWnjd16IhIGUGsXEjMKaT7te2l42MgirZ
	 9MpDI7KQB28Yx800CKAJiIJTBi4BmPZhv9iuvaP5ADtP58kcwb5N/m/XlpgCx7NQIj
	 9+H2rt/Ruf4Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA6C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594599357.15172.10585560626292096974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249c0c9859a948a5a0bba6c62157173bce219a6da73636b3a89e11045dc759c2
Date: Tue, 29 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745945993

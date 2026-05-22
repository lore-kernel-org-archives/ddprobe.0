Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359A4346FB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779493354; cv=none; b=sHMtXU93khF5XGMqcpHTOn2oyqJ+NW9JZ3NHJJYekV4NAgMvYrPCXhH3XIZuQce4xW1GWUWVJzKiWU4prPHKqzSluN3vyZsKHjxzhjfp6gxN2MoNkZTXxdHChwTFHl6RA4DVpJEVMlgxpctCeBfXIIdJt8yCPYteQ6JlecT5DJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779493354; c=relaxed/simple;
	bh=wbofYfu4kbNiXVIiBFz+Hrl5+/SpJPrxfV3zV4+Me84=;
	h=To:Subject:From:Message-Id:Date; b=N0YSrJdnJ6AwfIjce5BBQoIf4yAaeFhzpJTDVFwqnCYtNO/z4Emkgm+5uHTLtgte4qE8OdN2NKTYAocw1CUBwGteGxlb7HIV/OyZeuf3r0it/tMyGLHIv92tf9tndrP9R7Wcy1VfVJaeuxw4LDcGTsCWUd+W4GdEzlyM332hIj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv1QwlhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv1QwlhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5C3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779493353;
	bh=wbofYfu4kbNiXVIiBFz+Hrl5+/SpJPrxfV3zV4+Me84=;
	h=To:Subject:From:Date:From;
	b=qv1QwlhYIJCiUFFWI5sx5XjLSaqDt8Inid5wIlXRl/Ver4S4qN9E4JzdlaJdNu/xs
	 B214lqFjmP5BTLee0ePWE3WuiQLCf0YLmlzx2l+mAttCFZ4lDzOFtuBOXFhnjNdHx5
	 xCvvr8Th9rNV7vvFkABwZGOUeD5VS04nVKbYOO7tXHRvaozBpcNlVSoDXs0YAG1sJh
	 FWVlXiDO6AkDQ8IftLmzykqlmwDN3H/XoKzQHWGpAUz8gCdQzTWoqbZmIOz3o4c3lb
	 PMFKmVU0kW6jHGgkTwYcOVt9LP2TkMEtZm9VRUyw9IliC2eyPNIaf1bFAd2vTlO3JR
	 2E6AHOUnrksMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA857CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949335368.32633.9935934884118151460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfab0fb496860fe043dd0bcd3ad0c137971a08f1c67e14eaa5f39787deed88b
Date: Fri, 22 May 2026 23:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779493353

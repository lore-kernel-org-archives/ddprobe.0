Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F22E3E47B
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772997894; cv=none; b=REpCm8O9wVeSHBoetRIYlzX+mxEpKDNH9Me0kd1ObXMRzSDjxODX+IDqop3Aueo4V9UGfvbQ2oaqj013cpHFgrf5Jf48HXcSZT4rBd+AOnzDiKNjmgv1+kLEnXF+5h7VI4VpRrhs9uyWwZJZr+kIe2lcP/+OeoL3cw4AIKASBKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772997894; c=relaxed/simple;
	bh=E8zYO4B+MO4IllEtbVs76z5Imm2mT1QowYFW3C15R0Q=;
	h=To:Subject:From:Message-Id:Date; b=QIzCcKOpzgEHWOH30Xjt8LwJ1HbRzNx3mK59ofAHabhLgoke+o2eXgNqIBMcxAfxb/3Mpew75jCMDVP/OBmQzKZ9/+TtIbf/8vUfoWuqhwXtNVc1/BquazHGgXjH6eAbo/aB0H6sErO5D3bOBXN31/oL+n+wZE9RKDjzteL5AQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFNBxHsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFNBxHsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772997893;
	bh=E8zYO4B+MO4IllEtbVs76z5Imm2mT1QowYFW3C15R0Q=;
	h=To:Subject:From:Date:From;
	b=VFNBxHsExKxtFmKOl/4GC5B1vgYcPwKIaAhFOczg7y5r5SfqUoYNE6blC0bZsiZoq
	 F1Qr2LZNzlZiJ2G5DhqRfqz653no1nX2efd6OuoJP7fLfn2ZRLl58bz/ERUg2Dba4S
	 Um7VEPLuINf1QpkX8tk/GrFvYKNegjMYwssK+K+iWuUEYL0qzbrgOD+B8jcUxX4hX/
	 Beswt4sh+aTow8Ul2xboxd4UmrRfVy4X8brJvxdPMLg9mbvnf5LRPqgCPah1GTw9iw
	 1OL/bw7vobFsC5aYC+qYxKweq2FIcp7jv8MyAAhRDfnBsSg8/2HSn/y07jUrUaLnk3
	 HL/KjhO3EAVlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0DEEA8541
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299789363.24966.1720795698494783688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d71eed8a16831852c641dcab27ec8935dbc5dcc18ef93ae70e374c705f82008
Date: Sun, 08 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772997893

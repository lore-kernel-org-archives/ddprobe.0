Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552E3318B8A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767992634; cv=none; b=lBMkeb7IIylWCq0EAzcDzKJvd9cy1HnLoTIMV4TdvWIPUi23ttGWu+bUi5c0bTpUX4zXbfc5U1sAuOFDryRwFS0w1jDuFtLkzjsQvDcYJx+hhNw5CzbBQirAJwqIDKzErcdXICkrIXzIHvDnHMqeZWrfj21XmA2+LhESPtds65w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767992634; c=relaxed/simple;
	bh=bN9b7yxOzEhTYGV+3sHrT1MjmKKBb3Qkp6Xe1djaq7g=;
	h=To:Subject:From:Message-Id:Date; b=cAwkuePhe7LIr7R4hgUwZszkOdeELHsyMYzdcTu9xOKNGjWg7M/jivcrsD8hrThOL1RPcEomRkWgaLdz6c+xdCl84CcFJbDy5vE9ylbO6ynGwsdIhy002JTs6/r7/xuay42lyZNe9jM3BhjxkjUx4Z7FxkXGxO9H/O10Z6Oo/h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRYmKcY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRYmKcY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2F6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767992633;
	bh=bN9b7yxOzEhTYGV+3sHrT1MjmKKBb3Qkp6Xe1djaq7g=;
	h=To:Subject:From:Date:From;
	b=vRYmKcY6vJEzPeulLyP1Ot/lwx9rGcUKCQi3RolyZx53a4ehkN5fL49XPtkzUPv1y
	 B5Ds/Q+0S9+AjMImE2CXC9UlXDRtzoScEa33y1G7ZmrrIieRiM+aPq766+PIv8l25+
	 /+D4lTNSmqwHZMedLzM1HRZjAWClmD6uLXgM3RSMBmIiZFmpN4+sXuSK9gm+wZrgBI
	 k2FJzF1SQPJ3hIRucOP86+prxWW6vsyA9iJwzM12BSekJ6QujrTJK1RBNKi+DvUCaU
	 ylXvPKWJo+PLDjMwXDN0B20C9864uAO9nMLtHXOmhpk774qTA6WHM3ekeaduHomcym
	 Af5RIixSGsRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92074D26D99
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799263358.929.3521096692117165156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1921581f1223353013a494780202ea4c661988e2540a72462e4b7262cc65cbb
Date: Fri, 09 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767992633

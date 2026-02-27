Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060EE258EDA
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772207094; cv=none; b=Pa7mnBlR8vPw+vrdg6bIH82y5tkbPhZLE8HP3GmG1fq8qCk+W2uoPNoZ56DAUAPBSaqVbvPLSfbRj7XzpVbdesXHM3ixDAFQ0fbL9qg6qglLX1PoKo3mBbexwaorNJzDL2abcimoZ6Y0LVg56afqH6xSBqH8RjSg5V8NWyvrEz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772207094; c=relaxed/simple;
	bh=AhDsA0/W/lLP/2VCw0mMcZbd8ozE8hPyuuZ7ooQaKpQ=;
	h=To:Subject:From:Message-Id:Date; b=FNBwKKJyr7Qi5OyjX7rZm43qLOubWtXeeGfPEHUWusAN/u1gvvUW1fLW3CVkPmTcLE9iV5RY8Y0md/Q3KwfE4AsE8mJdsLh6hdLbMA5VS6Y7BL9b7h38bmVhvLYINmpdVAhcQz3aAg/YbcNCiOHseMC5PD55JJ2BsPxJrCj0uZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lolsZvGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lolsZvGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D29FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772207093;
	bh=AhDsA0/W/lLP/2VCw0mMcZbd8ozE8hPyuuZ7ooQaKpQ=;
	h=To:Subject:From:Date:From;
	b=lolsZvGDon3xcOq7D4eslxYbmrEmRLdRKGguC2WdQ/oKcK+q9IBfbN1j6cM2A7s8V
	 05PUHZWg6I9CnaDCF3cApmoU30mcNbx7ORko9zLN4NcF0FTwFExIaayFU9+lkpL2nM
	 y+wvK/WJ8sfVyuDd1243hAE0i/5UKHWKpq8p8enDTJeFBC/YKaEO2jd/IqOXszpt1O
	 mV44SYwej57f2A+wsFKviJZegPl/w/nlpsKRtW+KtJ7C2XAGp/84hriGtKOcHAIabw
	 SKqt3+Bh6z7cGDAxOTf16B6dbNCVzGnY+kVrQnFtYDBcsyp3EnTFb8+ysRK6t2eCv2
	 4ap1/WpSRIw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA8FEFB6A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220709358.21108.12197589639713068306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b700673a2b983fd8dd9f1fd78beda1c75ed4170285330c3273f99291363da084
Date: Fri, 27 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772207093

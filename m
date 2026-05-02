Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257FF2D7BF
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777728454; cv=none; b=XhesPMGOJ0VcKuRB1Afx5VjdD+MAW6BNVi63CTG7A3ps0MwdVPijb8TYHqEpaiKcwuF8Ugk6/xGxBfTGsRryxuq6bO1J8kMf7xddZNBsxgTta0UeB7bTHf+KgdOU5AZTqtyoBDiSjKSyxP4/bzzY+g9C8EiLeLzHYBlIZ8qpa6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777728454; c=relaxed/simple;
	bh=KHH0cXmZJgnkaq6pQeqgeSRWTDtDhL7vYEzVs6JyoSs=;
	h=To:Subject:From:Message-Id:Date; b=SGbEZ5i1QXELrbZERLSTyoxcq4NenfdStI/XQSQVTW/LPWvKzkdZWVQF80U7NN9/BaZ+f5UX6QOrY+YIJW/+IYRFj1F9JbzzuoN635z4teRA4lUL9vvNxsvpGuwCakkkfStJPQ2/LHNcLHUPFgOyhSNwqMnk4E3UBWkU9x/wf7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvvOnoZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvvOnoZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C454AC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777728453;
	bh=KHH0cXmZJgnkaq6pQeqgeSRWTDtDhL7vYEzVs6JyoSs=;
	h=To:Subject:From:Date:From;
	b=QvvOnoZXhySwlXsSgI2uXAdiWBjF239GGrGOTph2mckhBZLCSAFVUWYM4SzkBmP2t
	 pP7G2BHWrB7i1iyfP2gz30b2O35Fykq1rNgTTWIcFGA9S7wbVXOZxF7EbRkqFywp/2
	 72Ya9a9+3zV1vmBhL5nPg/3nUc2/pH8L29/fr1/Ity+Ddbrb8K8WBxhuC72fR2cA/r
	 B1g+8M4aX3SPiFo0ekMXBhXS8u5yfQ1SjPZCvrnngfWSFSxQvqkF8HHTYjw60QRkGn
	 mXq7SARlmPD89oWyuPzPrcl8vrfha151MkFxP3glbNf5PTN/iWABHkXaD0r8+4VNOI
	 SCgGDLjGSlONA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19F5CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772845369.27395.15818858743560560195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa058177453acb12a5bb11225dcb6f53a826c28a8697d307b336832acc65a038
Date: Sat, 02 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777728453

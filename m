Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A8020F087
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754047794; cv=none; b=aLR4WeikF0lr0Y+lGSWNbgxrjzaJZDPAe2WBqBuu8euvIGn+ei3PwVK0eSHnEjIkHkOTqSvugGhsIs3RSSasV9S5gRVKTzdGHcxCudB9ppmSbJc+sc9G9JlLeCTdzVi6lS5PFMf99iRrMvrg1liwWn5iMVt6zKZoW/ebvJp06lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754047794; c=relaxed/simple;
	bh=pgoGkk9ZoEtwjulRnC/sN+BTFuPxbFvXGNco9R0SXOw=;
	h=To:Subject:From:Message-Id:Date; b=rFOLLdryjGEYEa1MkZp2KSBQqM++mUP52nQdhXHknDdmsysP6Y7zwo+bJJnY7floCiUBfJzfQt5XNuD3WDRhketLDw6Tl7W42O8vOdl0rqEaNlGSN9dtNhbKfpBdPCNDH1UsjJl8l7qHOKqjeLudrtseVPmhscSh1P/5IHLf+BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yw+CP0rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yw+CP0rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754047793;
	bh=pgoGkk9ZoEtwjulRnC/sN+BTFuPxbFvXGNco9R0SXOw=;
	h=To:Subject:From:Date:From;
	b=Yw+CP0rpFCnPES+r9dZgqefJ0gz9D3LTmvZoZhfgKOUwz/tEh2PBr3rr49TS7ueM+
	 xXqZBB3rmaZllRpWN/KtjPJ1zCnBIy7PWzD3GaDN4Ubd42F6bGM+NB/63cog+d1z1Y
	 3ud+vPNoXg5lXRn8FEvKFuFrgmCdpMeZ4HyabyYFQLoRzF8axCc9n7x2mcnJGanjXO
	 xNpImuS6oeKUebAIdlh24t3JSsb4zLjFCDrJ8hJfM+X+zIJZHb3x8xMm6olJhEoeNx
	 cdKNv1ev6T8yIJ26yAxFQxAWFoXl/ltlhQJaefocmJFJdHAEA8HZwZ+IO2bqDQqRR/
	 wKpgWQNd6AadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E1C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404779358.18348.10195871655887956147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371c24495c2032dc435aa8c1583da8fa782a6cd39202aee197106e68b864b1de
Date: Fri, 01 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754047793

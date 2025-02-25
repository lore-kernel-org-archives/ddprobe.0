Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1BD1C8627
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740481734; cv=none; b=XZu6dI1eJd3DgKMBHkFx7/SGR3Y4X0kZ67gSRypTkrL2jwdYABdYe7W7aqhvQfNV2buUj2oXqsiW1kl0K0pD48rXpOe7p9ZOcxcj32LoCf8SXidlJS/Z+m3mO9PdLyYxdp2giA0v5BokFhOKLrddyZHoEOgn3eRAoEzSbJjJ0lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740481734; c=relaxed/simple;
	bh=zYQnvuGu2YwovWShsDHkaQaZaUmFSIdonrAo0VCJ+nY=;
	h=To:Subject:From:Message-Id:Date; b=Q+L6Pu9ircMA1aYgZl9L6gFUXimq/hT0Rxgb/ccyFhaTJB9fMMoH/yexCTyQCYrJX0MUWHUFI+LoVqsKV82TxVErAFtFW6c/J7fKKdb2tzedmAtJwU8YEr3rOEOAJm5fcVAbM1z86yQ7SBk2yLA1vwZZHRmLZP0tk2ixnpyn5R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfFrXDmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfFrXDmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE5C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740481733;
	bh=zYQnvuGu2YwovWShsDHkaQaZaUmFSIdonrAo0VCJ+nY=;
	h=To:Subject:From:Date:From;
	b=OfFrXDmTx7toLWDbmAlrvrPpOPNx6ZtoWgb/+iurslbX/YGmU3/ZG0CHrkwcgUK3h
	 0+ZHKXh+jt2t7fqx/czIsMBKa3TjC/6bLkbr6DMnEJOAmEti+sVR66/hZI4ghfiXAq
	 sqe2QvJhfYcQHJGYK5QcEU6ptQ5Ra5fsgFImCSf1aylrhYdgLmDEbD6WKM1WdV9koz
	 bd2LLvHVFrXbIQd+usVHxlP9aUOf2EJiL3d+Fwod8AX2+AJSQYm4hsHa328zrsAkMc
	 3wG7vFzqz828C2VpyTBlrlvotzVfFHq3/46dIWDXnEIFhYX5xMdRCYhZV0ABYUEEjj
	 inExRMjbjPKSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B7C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174048173359.16417.8282567231755528027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbcd88c29578f21446ffc325045886581d0228044bdda3a9b93815210123d18
Date: Tue, 25 Feb 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740481733

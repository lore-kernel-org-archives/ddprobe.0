Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0514813FEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773191094; cv=none; b=TdU82D8Ou5aGdI8WxDeTsJlJNZGOGaBbRNr+7jOx/V2Kq2t3qN+KE3CA1HeGoW5tERZUamzDO8nypa0sTcBB2+KG6Ejs6d0B01knq4cXR1RklvM42a7z9UHhqmAkkvv5cmC9vDB35P8KIdY6eC0/e7FoVBv9WBnwsJSf3HUE6f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773191094; c=relaxed/simple;
	bh=vqyZW7yH04uQu/KrTD/KiDsLS6qnF3wXzCjk3aF1WsE=;
	h=To:Subject:From:Message-Id:Date; b=Eu4WkAT7gQFd88OgcQ0jj/W5sQwCZApB7o2WLjgotbyZs3s6KMjXU1UdIlCyJUWOHcYtzPt3MpaeJ5zsub6x0pP4qz0pYxCrKSDCDPorBCHmXzW3xgZpimdyPeZKR0xGDrLvJEPxPBh68za01z2rWj9ulc8LnjSvlvxNdb+eHoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRl3v/GM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRl3v/GM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B46C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773191093;
	bh=vqyZW7yH04uQu/KrTD/KiDsLS6qnF3wXzCjk3aF1WsE=;
	h=To:Subject:From:Date:From;
	b=sRl3v/GMNGAbCzHrgUa1peydqGab/1R5H/P9BQ9rs4dtG073qPgbrpXE+X6zscEWp
	 RP7p1Chzq8XOLPhISxd8s66yIcPp61mz3/hDSNQS1hm10kfRoeIGxjIa1FUAVTEFFv
	 z4FOxqBlm2HtAHzFZkesovtJ5O9cnNgZlenuXKQMVgJuO4nszsAUwgIeM3jSQSKsnc
	 CqQ5g+NpgpN05MILqLkWH7XmN7iW7+5EzDHQeozxsE5NSXRonjrb/A1iHLB9/RhilP
	 qxBRkHaH+LXkCshaYWrTZhGrgZCPlc8zj3XsHBu/FbaE6ZKvcTfGjhdJ+llWX6HBXe
	 68w8x3TiNikJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AFDFD88D4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319109358.1438.14060538689286203463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b827084426b888551255068e3574130a3388329c961a4d15c6f2dc09039010e3
Date: Wed, 11 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773191093

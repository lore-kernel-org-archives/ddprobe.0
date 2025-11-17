Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ECA320CCC
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763385114; cv=none; b=gHb3wsD9wUWaF4cWsi8NWEJ56YpH1v30n9m9fg+F0cZwMMGh/UjHQkHZchLv83P4eSc6Q3lWCShoHHscUb3JsprBTlvY2KuRfxirIrMmwMJtNbp+tV3Bh4L6p/XfnnBu8AUapIbpGFsWvXIw4xCQoqA65rVz2AhZYra7s0Bh+fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763385114; c=relaxed/simple;
	bh=IgLMJ6ap2DPwVxLsyyvNhK/v5UkXt/MYhp4rwQYugYQ=;
	h=To:Subject:From:Message-Id:Date; b=AbMmebRe0p9WEMNd4ehns9Qf631nWVGVn2FfFiTu7XY3cq0gW30HUDDPmfsU2qo+Sw2Nl9PccdrKhnYpG21kIy9iYeh3TNF63c1xrpp9Wq6WDJkaetoIwOKbadLC2nwbfN2J8GBoNdaSLf09H56DfL2v3nkcW/PEM5JFTE2bjt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTroowiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTroowiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AD7C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763385113;
	bh=IgLMJ6ap2DPwVxLsyyvNhK/v5UkXt/MYhp4rwQYugYQ=;
	h=To:Subject:From:Date:From;
	b=FTroowiz0ZOBkDcu9TYdHA0kd+l2NhtrfBnZG6QYRSyc8bvNnDqKna2t55Njk7OJq
	 n1CIVNuOw6FbHBMV9uSrG/MJPKb2pAATo0PsKb27smnW70as6G6NYDWxAZ6BZWt8FX
	 8RxR7NaxbDA/zf5gzpMPB8sv88u9i5hR/6janjZo9MPFEkVZ1vOygWqUdaYK5oPIrk
	 eYcjOE6tKu8XXCy3LPOGe7cdxU3AYMwng5O0hiaumVM+2ctgO/UzDkWujt8IXg7VcP
	 A/rU1ge/fvQqMTYNn830j7PYN4I0BhO72npiT+RCFL3q8TlpJ9H8bHilx2B+ZU3wCa
	 kQBCepgElhHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26A9CEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 13:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338511365.14546.17355379770967496499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33579621371a9861c8efa191373c55e9460881def0b19217e68f274bbaf5a163
Date: Mon, 17 Nov 2025 13:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763385113

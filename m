Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322C724C09E
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747774796; cv=none; b=JOenAa0x9RdwAKUnqSic6NnQqMlHvUoHXwUPHBa9Ckc09VhZxMRFnFvDwkYfB1Lm41wDNR5LFLBCsQTiOEnJt3M6M3PjO/3D5TJxlyJ3ecZfD/+umVtdpPJfYgaaXMyjB4d8egoEHmxgFDU2d7PwNBPN3KC/gsFngFSEK8OLXM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747774796; c=relaxed/simple;
	bh=ZtWVGiYDZkbvJHXRHoY8dJlt+x1FmsPJD4LQHYnjxWk=;
	h=To:Subject:From:Message-Id:Date; b=Z4Cc7zQms9hVXWd8K330tH1DOayeTM9RtUNdhIZ3WXFy1GehLMLHJX0LOe6hqh9afe2USvsupfjd5MS34uvOsfXA+CFNrgC2sgjszHHpVl3+5Alh5J8jZ84svVgDD/8UJ4LaF80L1mTiIoIi9BfQ71EoncndktK72gYsmit5d70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPj9AvWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPj9AvWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7CFC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747774793;
	bh=ZtWVGiYDZkbvJHXRHoY8dJlt+x1FmsPJD4LQHYnjxWk=;
	h=To:Subject:From:Date:From;
	b=OPj9AvWF441QyVjrf0gV0jpg8wLaTz4iB249bl+KmXv3jfurYjyTMJUlDuNr4w6Z9
	 y4daJp7DdvB/Y6CQn5KlLQKIRQKNi1CWI1W+F2/c+HE7QhnhPVCbGRV5Y+ab1mIu0k
	 fkTXqXnOWA6qJgj63M31P34bC6S2o/y3Mwsya+ThKs5nPryRjE2hR0S1ARDzGG/BJc
	 GblNQs9Z4FyNa77570vIRxHounbe1G+jE805T0rASwaukAnsYR/ETH/Ro5UBGq1SRt
	 dhUBSMs25yw6C/Cx0XTKjqy48yAELf+FX03YnCj2615NtDMO0zxI+C1iHQfYkgKMsJ
	 b9WNDw3NBrIgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB72C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777479357.12512.9240923763103728585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdc7fde9daef11b888bad2260a7f94e086a1e54f56bfa64573b15400634f71a
Date: Tue, 20 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747774793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA50243360
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739058356; cv=none; b=tFU7Gw79jggtZOU8rRug6RXNoZJ61rIWXQBj1XUVZtb8eZoqzDrvkXsWomv/FD/Ata2LpVaCDuslJDQ0n7iFkmDxHM8EC+o71dwQilmZsuJBbsKPbljmszs2v3zHfTc3n/qdeVm84TDbJ8XBqXpXpYF3wa3aWCsgYLTsMZWBCfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739058356; c=relaxed/simple;
	bh=F6hLEZJQR9B6EoS5LbY44rYPcqQkm2Yal+QqIEx3ziQ=;
	h=To:Subject:From:Message-Id:Date; b=Was0/5kbZW2bit76XWsJpv19mNtHRXiYE8ZEtjnvEiY23LpvYPrOafbC7IHwMMDgA4FKowOtxzX5uOrmbX+O5HAKLNkOSJrDi11Fn48OP4gCLkZPWvxxmC6HTtgiPCn1qfZCV7+MUTKkPmtMW0UyhjX9V/3FyI3QU2Dq0sSUfuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCo0miuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCo0miuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6975C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739058353;
	bh=F6hLEZJQR9B6EoS5LbY44rYPcqQkm2Yal+QqIEx3ziQ=;
	h=To:Subject:From:Date:From;
	b=rCo0miuyo0Hhs/1o75J8y5XDoZbie20rHIiPkTTURqxJl5YBj8PjEcfQGxWwT7mRh
	 hjfTEfEy1d4fV8Hj2CUI1K/yvRTpJAZotXVETSux6qQmONslvycim+GthTKMiw95+q
	 d5keJqF+aDuOltGpHItpuOhOkiwCmD1figIXvgLKUHimNKDixNNsZ/2uhGHC61jsJX
	 p82eujJWTNb1q1WoCoUM2kTcRyw2E0Ki/HVDnNlZGljVh6bi0nTcpQ4P+e5a0Gyq6d
	 j0yvpXYccyhEz+ekE2nuW0wDcrY4S3jFmvVoZH7AtlrJH3oXjVb1XEbcEVBLi331+s
	 qd+0tYV4Lf+yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D67DC0219B
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905835358.20681.6338806941796248028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2f969fe7722482ebc5b3f6a96a7b9f754a22856f1f435c06403b97ed08fc5b
Date: Sat, 08 Feb 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739058353

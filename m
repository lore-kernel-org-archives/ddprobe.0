Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F7122259C
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748677794; cv=none; b=Lu1+uZ+P3igU31mhQKMMJWuf9J61RRTwYih8c7YGRoFjGE8afCgLI2aX3ZBqdVHCQ/JFcaeqat5uUotHngU3Or6dEX9Rj9en771qD88QegeP1tWuUCM4Yr/iBhEVBGVWU0zp0+HjTs/7GQpDSBsUw8to9pjpbLLFK5ofspvDY04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748677794; c=relaxed/simple;
	bh=u29b3I2Fcm4f9EHwjDuU6eE0S3yYcUiH7/4oYadtmoM=;
	h=To:Subject:From:Message-Id:Date; b=AJrh4gaUzHeIg/m63J/EcXQPnRQ8GJQmGPJOO0jFsGuZRBMyVKaPulj2hK0YEiQvna7WrjsgRTrpRujKmjZJoM74lxTsLIhdaC27b1yzmtGEaEhAabWYunwnh3cv3xkzuK5iN/XnV0Vmshxf1xad/4dQlle24rxJrdOSFoUvPKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg1matXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg1matXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D955C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748677793;
	bh=u29b3I2Fcm4f9EHwjDuU6eE0S3yYcUiH7/4oYadtmoM=;
	h=To:Subject:From:Date:From;
	b=jg1matXFl01T139WkgQZR842+gHK/0rQq2p7tw45ItqZh3XJD6brGMakzJsukj3h9
	 pqrFfBLCxGRW7FAFeYi4ruIB2BN/WI+YtK+GJZfoPeib//KBlTDqehBP9g9gO+QX/a
	 vqY4M5mNOOyhV0pon+efSgFMXL8HnmjBGZcg+0MVJnn7rNiLeGpB6a6MeYHe0iCUAx
	 ecbRUf6T3e9cqe/ms5561lFpXeXL/OXTShMSMc4yhObdVJsRk1qwZDEKTSS2jKCVJl
	 DZHudOK2JW5ezdAMKx/+RDLbAG6/ORNNjgDqJ0Mn5jV731O0f02tnOr63TFtkLuqDX
	 cuftwYcAaN1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC9C5B552
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867779358.27179.13315716908057907271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77be4d7135d684fd53840cb801324fd7048a8a642bdacd3db910ca1e815b4b23
Date: Sat, 31 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748677793

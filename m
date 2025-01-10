Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFF51A23B0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736544354; cv=none; b=sBzFPNtxewDfEYr2tJtQK2mLf/2Rco7C4lAgj94MrkLK4fEN3ImWGJLlObfUEAgWOu+lYwKw/focE+KbHNDVipdZYE+y/xJLKjTkF4DyuudQ3Hk1TtDtkrqDSDePH5mb72fbzTPIN5B2OqreM5qVSRlgFPTktd0wjnQ+NyoBQdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736544354; c=relaxed/simple;
	bh=W4SdnNUVLgAHivIv8G8uaoX+vh1Tb+kewN8MAl7e3SA=;
	h=To:Subject:From:Message-Id:Date; b=LQiHVaKBvGz7ArF1UQXwmkOKSRCysk50y4zo3YkMFGBbXiZEa+gKdJ6bgcDZV+b8gXCxBo3kd5axmCnoC2vEdiR3F/50C6/9BIZJGV9RJa7ZJf5f3oU90MganPO1tbsor3qHSDMu2rAPGe2MhTD+dMPgaepeG32jjOa9oHh3ZaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNbpyoNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNbpyoNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D16C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736544353;
	bh=W4SdnNUVLgAHivIv8G8uaoX+vh1Tb+kewN8MAl7e3SA=;
	h=To:Subject:From:Date:From;
	b=nNbpyoNEjynrxpQzH7NDZ8VkEFevpp/H1YM91NQYFxMU7V4j2/jDI5RQYGA7QykSp
	 jZSuO0mj5H+dPp8V0mcpTjnvODQwpO2tVmdtkiL6WggVunA8NYUcKYyPvnfHISWsI3
	 4Z9M/T04+D3zjPqPpVXBWnOyJMKDtVHE1ueqGweLabEkeNKvpSZMWqXuW0UH0wGVDN
	 Ivlud9SZUh31pYALNhTs7WU4X/esrBcIuYruLJr0iUuKazRplmjswG1JmySMuace7G
	 qy/QqNyICStQl4Dazkswo/s0W2HMiiRaHXsDDru40xse5rw+ENqTzbbnpOipmC/xOi
	 EO/VFINpcxYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B01E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654435361.13705.310456861305636564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e06e4c7222c8f5eccc3c1543544e09f8740d6d9c7d5257935a3755f3aa59516
Date: Fri, 10 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736544353

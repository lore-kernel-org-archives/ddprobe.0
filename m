Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2E4248166
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776314854; cv=none; b=rBHszSIOOuOd+hsPKKyvRWVma70xBdPZBfOG/WUO8G6F32K910xnJ71C1gBDGwAeDc3JzqNCDylgHaTPh9hjbdY8Repysi7QnrhGBebfEYJTA/0eYobxSZepUjof/tIg+OzAOBVbBf/5C3uVPhEkH+y2ztp/j7QaA7LUHCTJhxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776314854; c=relaxed/simple;
	bh=4Bj7uDdXoJZFiBIh8XRZk5cUXh58U909zPX78WBT/OY=;
	h=To:Subject:From:Message-Id:Date; b=kNfeD5lsgqJSllFtU2HMQc+1gu2ZTMDT6pPFORPfrq8YlKHsasxjOEcZK+hyzl1BA2jWO6hebvt3hFtIpPV0WQG1u9vGiTEp6I7LU+rhgvjObQHFap3O673neJ+SsOqz+sF1ZxT20sy4lvxVl5/sjwuMzTjWnTC1wGzk0uXfz7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsvKlwDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsvKlwDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF40EC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776314853;
	bh=4Bj7uDdXoJZFiBIh8XRZk5cUXh58U909zPX78WBT/OY=;
	h=To:Subject:From:Date:From;
	b=QsvKlwDXx5zVwCH+20Z+/dUsMarxSsoK/VZbE0SdN2hHoNoib67H+/oSkV3LE2Zpr
	 2Hx/pZSLXNIhFUwjR12m+0ZNiFyoISUxYfgT2gGBRKOyhv0i4SyoQ6F+9dbSU0Tmgq
	 FETmjWS2etcV38dD29fOONEvNPuaFn7uylBlbAPdAsj3zkecPESQSO8Ip1RWfNNh1w
	 AMqT/NCINpPaOXD3xHn9HJmbPGm5FdRR74FzVJ/XKMoKts3KoxQ2QrRCpYJfHIUNg9
	 Zp9sjThRZbZM5LwC/fSBQyfHWAF5INnIoQVgCu8zB7adcLRxCTnVupA17EE6RGOuOd
	 NBzmHUhWGmZTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FADF433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631485368.26941.17174197871352892929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeca6ad81cd169cd67cc58d30977b0d55d20a91b1df207c3dbb82aeb3580a9eb
Date: Thu, 16 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776314853

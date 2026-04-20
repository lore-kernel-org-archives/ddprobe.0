Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2A386C15
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776677854; cv=none; b=Ur+NVl4voxQ3Ms5h+JJj9FsAdCSa244W5a2Sdby6rZim9YZTGNORQUj8Xlm5Eza2AHDxGaJxhpFdqm7w6sRZ1XEeyvVS8CmE9lw6WZvbbVwXbzn5gwSxLnHHpSNBU8DZWNQhI2icTRELfBNBwTyHGuh7ywHKrxA4+0xeYLo0Uqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776677854; c=relaxed/simple;
	bh=ZC+io43SNnFUcEnM11kXrtorRJa1a/HDWJSYkRm7CR0=;
	h=To:Subject:From:Message-Id:Date; b=TDyPiu3rPbWaqELRjGC4UDaegjS0qXsV2VoOQVvfEr2xZ1c7LdLqVr2mLPXMA8+9/YOxADbUZfjFtcK/nxuq3iZ2rRa/vx6knjnjVwn9iManwBDbiYZJh8+QdQODt25T7IrJ4fWIDQedoCIpTjx4OMOvsgVsZUuAsZfuXI1mWhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1ospp+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1ospp+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E5BC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776677853;
	bh=ZC+io43SNnFUcEnM11kXrtorRJa1a/HDWJSYkRm7CR0=;
	h=To:Subject:From:Date:From;
	b=a1ospp+IJURasdpma35/VvrmQEwJcwVSd6O6jAfj5f6L2fVoyReoq5zgpoGnEQvxK
	 Tex8fUW4FJDMILgWY4uLhLkrCpxuscRQsKMw0lAUX+4PHaA/GvyE3tVgWXrYoqvw8J
	 0sJViXTRNsix/Z6EQbiJFnH2OvYc/tBBgb5aJU/c+8K1Haa6GqcHGebf2TMkbi9yPt
	 mh1wHePPU/x5a4PWHtb4vpkgYaIqJjotaxe2IgbSUcu7G+X2BSxlteUpWu6ER7F9+k
	 QjR8AFM/TD9nPWipLOzJ/zJHYXqA7u2PAynrGr90yti8BqiRE0IKqos6Qwn8ORBT/p
	 SfCvmiQB86Iiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B707CF557F7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667785373.18737.17769241553919891175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8daeae442f352bc07302c19065bca8e93cdc4eebdb71158419a85b093fed20
Date: Mon, 20 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776677853

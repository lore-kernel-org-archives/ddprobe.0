Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F633AB288
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783477116; cv=none; b=D/Ex46IYqpkULNo3IDvHJZKc5hGukaqnBX+R+8dWNEwQ+xOne+pO8jNjK/y/KiY/EL50WehNN3IhHmpzu5NvnmB4WorilkKDnm4MBoRtxO3d7D8cDNfH0fV4L/sb+q2tRu3U6sCICtxVw3oArWllLhWhdgWqi9o2YWKoP4nPN38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783477116; c=relaxed/simple;
	bh=Ay298EsLyWPX1hK4/Ib+5Rt2qWBkn+3NMP0WpbtGR3Y=;
	h=To:Subject:From:Message-Id:Date; b=ZTG/Lhx9DAUSP7ngSTLucKKX/+eXdGbHMlWet4y5Xm0p/KNCsmE4i+axaBLAdhh0/mn9wIoe2SE5MleMCz0kV2QFsIaYM2gviPe+gOJITq8/2NlJoRLl2oN3ky7T5qbFURirzBwujA5f9X/Rz38oWQosv+K7w2UvQwn8ZIhrslE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iv5/T9z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iv5/T9z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A37C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783477113;
	bh=Ay298EsLyWPX1hK4/Ib+5Rt2qWBkn+3NMP0WpbtGR3Y=;
	h=To:Subject:From:Date:From;
	b=Iv5/T9z6h2+RM6Rnf6S0sOVo9ixM4ngCJNMnBgE7gzex/wkEZoMQIFdx3fvRBKw3H
	 L8DIyMgm0yCJM4bYMtdRxpoYHycnZrpdRQvAzHFYscNlFzfcFxgULFPk1Ytobcy52b
	 OdBzmva8njEYjEiaLgTuUp24sHK6f0zkuup+93d50Dwt/zJyaW2Xgz3EIbjAa29Rx5
	 QjqGscdYaNigx3M8v1ccivNRWXgYj6IJHEER24ihPtw/CRxY51hoL4kkHIHFuaS67l
	 dMFH67v5Jzu09i7/RChKvmMjw11N+KOnq5NBrzWOloCUbUmVdqifajMZYyLzWSHHT4
	 QLlFwfiu0G/fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9075C44501
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347711368.4655.312911246854848775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ad7ab7a117c01744c276c27822265bfc18f94cabcf55554af753688113a3ef
Date: Wed, 08 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783477113

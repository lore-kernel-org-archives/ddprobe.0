Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DC31547C0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774832694; cv=none; b=q6NtgNVw9wk5781PAlqzsauDcE8w6m3pd6Sw+l7ovrwcivwSNdhn2g9dk/rBXq9e+EPfpq2U3/XK6U7qEvsP99SRwJDi/PwvA+vn927DCzH4WAlTMVcB8gQO460gQQ99iJT8UswNQ4hk2b/MgurVXISl3GC9Ms3rtv2w5HcJADo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774832694; c=relaxed/simple;
	bh=5/qKPNYjqMqI5MAny4jEJORzZgD7WmjlNrRdpm8gHAQ=;
	h=To:Subject:From:Message-Id:Date; b=Gt3FEq5UiVzHD8Yyyjnw232arEE4DDIxUILv3u/bbmSh6yuwN5DxzCyXmpMF2NzTTvVBz76JUvuJC937HdCC3wD4qgqg/6ls2Nioy9r+9qt0pNvpEUaAI0XrwgqNxM7keu9QgqGYb5XsCMgZk0fKktBW9nux7el6vagmAzO0wVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVUei+n4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVUei+n4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9939C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774832693;
	bh=5/qKPNYjqMqI5MAny4jEJORzZgD7WmjlNrRdpm8gHAQ=;
	h=To:Subject:From:Date:From;
	b=bVUei+n4Ktsfa8QkdScHPkgvSXh/jKY7eKav8gpUrvaZ7qvRj9roMAcWa57abiCzl
	 xZEUqLM/w1njkeenRQi3Rq76Zbkkpb3YmjSVVD3N2GqtYrPxrmffAY3LSh83IfBIa/
	 cE7wQXEdo2gjnZkDhv/38nu+QHMuHIgNJSNkdVdS8pFsEQY+1XstpQ/D7F/FVFIFCw
	 v7zsoFWXzoEqkefwZRUARTJ0q/4AbgDzvuJ4xvM/BiVwE2VQBGncd02IQULsYWYGZI
	 zVVZulq/UDtrUDB7yx2UjXe7uTiWZhhV8V6yBpHsdgkQwYWEBmTgVP0rNcikP0lhyP
	 9Zpl7CWS3aYfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DCDFF492D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483269358.12580.6868805121324622341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18013ab501a7b3890057a553b3743a3191cb94fa49af7aeefe7c753370671c96
Date: Mon, 30 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774832693

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4621040879
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718792363; cv=none; b=FEFK1OT6Vx5I7pvePeIOqiMRg60PBtQTYIjFPm7s8eo7XmwRx2pC9kpvSHVPIq2uaFJQJ6f4XlohbhjQtZvA75CGIuwHtg18aj6y9d32s8AMgqaj6wn+n9Uq+kgF/YWPS/V0aRxbSXFhwZzj5gos4gW13+Ypb6i1dHMugFBufGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718792363; c=relaxed/simple;
	bh=1zpFCHm719Kd5/R8/x2yqJlTBSngmp04Lh4j1K/eqLQ=;
	h=To:Subject:From:Message-Id:Date; b=oAqMjrOwnEVxEVGguoaWAt01y4icBoUiWXO69OD9W1zxvbIof85M2iQRTUqBZi3sTZ6Pb9hjqjoZniN9Ltb8CCO5ZWKepDldhEJ/D5U/FauQRJlLV0+1BnDaBmeUlU4MnbbXOdjsUS8sxFOjW2i4TBDVT1fCNXFN2R6AnClTXLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqzScfFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqzScfFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC41C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718792362;
	bh=1zpFCHm719Kd5/R8/x2yqJlTBSngmp04Lh4j1K/eqLQ=;
	h=To:Subject:From:Date:From;
	b=PqzScfFcMef+Ez2Td8noXp4CZFy0bXn77VnmD2D/IsWAySaAze1/X7VJvJPway1+4
	 1WjP0eEJFTZJVn/eimgrFv9yYx4Dzk/2NlTxPYGo5m3tAW4H0dDEExXj9txnCMVNzP
	 GfPG7yOBf2TDZKWrPTY5tBLgznnkVnd1FhCethNjTEPbF4DvIIs99l/fSOvfpYPJis
	 pZjewoJ3EREFayPrLN+hqVyuDuOv/P61cjsjqsdcHmeDuWCmz3zQRx7RVA6uOqyQJn
	 wf9Fl6cgmiv7PdBlMKBBJyjXVI6+YPnVKXi9btHa4/m2P7dQX+ZJPCX/wud9Qt9a8Z
	 p2WtICBINmrXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BBAC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879236279.28414.17635920845940506762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf6d107495872643e0290095056b6ac496643dff0dbae642da8b6baeb490507
Date: Wed, 19 Jun 2024 10:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718792362

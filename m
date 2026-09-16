Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF5E4854E8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789600834; cv=none; b=TDptGTEM26KVSu43BpGVm1+e4yKs1h15ZSv4ayk042nqEU7oH4u3UZs6BKKR2TQdiEwKlRdaJ+nYmVokY0MZvu3vMkCBjoEWYlpAbSBn65ANm+Ci0jJM0NQj1OMgkB1LE4kK/XnGe/u0HWwmay0/ADdmmNnq4z7KsvbDlNMGUEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789600834; c=relaxed/simple;
	bh=iUhlUkF5PB2H1OoXTha4zgtkaRJpZ2U3zKt/pzwB1WM=;
	h=To:Subject:From:Message-Id:Date; b=ZzSt4AvGGYSMqRqCRSCqNp+wsLCUonTmQXhDZpE8FwUZlhZNPSYyvk6RjgkX3XS+/IW4EtuoE4pSUCC5zJwPr2sz8cx+9PmMYpgBKdvG2Luh8quqyf69OpxFeHNYl+jzaEmlDK71oxx6sz3nSkEUL6wfhJE+F+MLilk2jqzikc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOwEcLCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOwEcLCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4930C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789600833;
	bh=iUhlUkF5PB2H1OoXTha4zgtkaRJpZ2U3zKt/pzwB1WM=;
	h=To:Subject:From:Date:From;
	b=ZOwEcLCO04j+A7nL/p9HMPvGHrFB77wjMyfJ8WfSD1kDIZHNmgdwuDzynQZR+cFqC
	 wWNjaUMcF54roNT8pqlvLobpN6UAY3LE3SLqMhc8S0b38OI275nmkzANqj4GHl7bHQ
	 nNZaCC67XrAvCb/vy0CXg4uogrC+YDAZZc3fBBB2h5lluWY/P3qFztV7UUxx9EPFxU
	 BXm+dsP2bzweevBsVBnBK8MOU7sfrNuM4iu1FMK/T6cKykuLyuisDAfnTbLdLfkmd8
	 NHGZKidliIMizd0s65wE7o9nlE3jWZeO5VGWeEgacGjfxPreRXtSrxiAJhFn4zmFzr
	 GVHbpOhqWAN8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF41FC982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960083370.16560.4083933490759955970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a405c0fca32b55c6e33535168aad83dbebe6060eb08a8f2aad191fcebb60fcab
Date: Wed, 16 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789600833

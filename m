Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DD012D209
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721346954; cv=none; b=jE+ufygT5DltbUHzG0PoJn/7lrg0sPZ3CHxaA1KujjjzWSuOOVCGZWO27c01tjKqZGRfxGBTmyRruq7DWvmEttdVY9pRUWg7+AyVACmtU7vSxKd7ICLScthxSxfaA/MFqW1g9/KbnWKkjy8Wiq/I1L+cT85wD7LO/d3DRONYOkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721346954; c=relaxed/simple;
	bh=bNmAzCmf0cc/G/5egvU3s4wxTYGU0fMOg18cAHQ/S9w=;
	h=To:Subject:From:Message-Id:Date; b=mHbY1jYUyJjK+tlV0X5pHY5IuAUNWTU6n6GKPON27gVE0M/4e2dyUUqFsiWogCKIFuWBXX2OMMBSgYK5nXsFlzo6T9RBUDlD3a0wnyCnTvI+LGqHlD36VS+IbwC8NAKLxU2CQvdfUiCi3URfGpYQDiSf4QOiJutTeGmc7IFEke8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Udbdwxhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Udbdwxhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB005C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721346953;
	bh=bNmAzCmf0cc/G/5egvU3s4wxTYGU0fMOg18cAHQ/S9w=;
	h=To:Subject:From:Date:From;
	b=UdbdwxhhC3Z/D9+lMToa7Y5aLiAhkwBKaUWsi/CmMNvfGJXcDk4wwCmWWcAEOGhZI
	 p25qyLy+k8tBCIPlanI16DEncnqKSRruRAo0i/TcWWk5JrI92W1Pc8wQvY5NX3HeTr
	 o+U6bwwpLPV92IE1jyheynj9prpIDXMGpL7G0gCP9hDOULSinsUaXRYESneJo2CP4C
	 WDc43IoVo5J4Bed12qjVOvK79OoNOvkqmZlwLF4U41SMVMgcJKFbTBxV/Fw0miU16b
	 GAuqTw5vAqSec0XRjjk7CkRB5JmpXyLeuBEUZGjOykFldE0yhlAUSY/jOUkjMBoO18
	 V39wgAxr8MVxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95038C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134695358.6511.5586966876838509589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ec15e3e162341e617b2f9c053b8307d288c1c3884e9e9e43d67de3f3b9e037
Date: Thu, 18 Jul 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721346953

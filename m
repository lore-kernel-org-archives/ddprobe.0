Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE62B660
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741413534; cv=none; b=okxRgFROmx+zRLV9PXM1VTvQ+wbaHKPCpXgLgxKcESbqHEWx0byX4ayCl7rgVdzRvehUcTFtg0UUuIg4kMowKz8Jk4MM5sQh9CDpzsdYjHZj9ylaTH+eQvOHMGLYtC9ChDD4xHxtilzL3Bb96VAWBAzBjTxjDaiJ07vmIqdD9Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741413534; c=relaxed/simple;
	bh=9kK66c4hZdW6ewCqi8pNVty9HICzp5G7DtxV8r8jgiA=;
	h=To:Subject:From:Message-Id:Date; b=Ky4j/9A5+MdEZ7/NVyXmGQ0NOjfoEJL20v9Fq0ud85dFnETcbFrpPoUggYPkCMTUM+REV69iiNdCt/XczhZI2uTXJGO2Nl2BxcfyvjescSn/nN9sx1+RYqP1I05Wn9HFPFqRbqc8bFZRkaJ1u8OrwhOu3Cfqy98GsLdMowEr+bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qV9sAguK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qV9sAguK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58F0C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741413533;
	bh=9kK66c4hZdW6ewCqi8pNVty9HICzp5G7DtxV8r8jgiA=;
	h=To:Subject:From:Date:From;
	b=qV9sAguKQpRhFZ2FFamjQglTKmRsaKDt3sw8WhZO5LqC99uT8wj3TuY8MUaFECIvN
	 GTMh0QnB2JnW/Y8GWizYMhF5JBxqPGGRGuNicY+qcvzY1/5I1cOcycWRpdMqb0G5UO
	 C2CIacp9eR2PjmsExBq94n6TCkyeVWe2yb52RvqRROBvrQLaZpwzj32SwuJ4ngPNsm
	 UQPXM/wkobaGTnZFSF1RHCE5aImBBE+oZuDMr6l/fFE6A7F03OV4VT9y5izmkZRq/N
	 /nfgN6v9e6QDiSTFuMzyH/IGNq6sKCtunvv4hDyk0r0B9GGpBvhMszBTbwHT26FWTW
	 ckYZF31lDZ74w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0471C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141353361.20873.14742721971663748183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b50b3b0c63e6bb42092f77f365ba554b706211ea28454987dbc732faf2fdb5
Date: Sat, 08 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741413533

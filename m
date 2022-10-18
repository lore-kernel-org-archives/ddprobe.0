Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE471857
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72262C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666066253;
	bh=yE0JSgeil3NpAIVjJBPgvpFHY9HKOWFUMS8WSoZXJck=;
	h=To:Subject:From:Date:From;
	b=h9t4jzALI7dbsWbrvb9awmcfGFvk4yDEuLt2Z8Tk+yJQ5+rLnPOGP9rONXDhGUdWf
	 uErVRRd+ckpvEICpJpMWZ+qXE9XDrbMQ722QirCy/gbx/Hq5lDvBt+7GrlzdYl7/wI
	 HiUb/nmLwuyz+sydfHOZsfzGXia+M+gbD1B6iJKptY73MVj8GvmgQ+zQQSZ9hX0Bui
	 TGNY2gyVFhJHdJdwvtvv7i8rWbQEL7kdsRSgWpfuvQJsqUQjeCuf6awT47D3n7T1Bp
	 siF7UanLQKjiZVo7ySY50pbwVr62lDi5OavXjYX0dv90A7Nh5fPrbkbDV5LmOSUIfs
	 CDgyWbigB9XgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55224C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606625334.13243.3348758756678315234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdc3d1023dde8a7ccdca87f98f419dec6a532ed4a088aeb98eb334203280f8f
Date: Tue, 18 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666066253

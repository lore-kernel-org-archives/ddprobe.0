Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A307C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 04:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF72FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 04:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684471086;
	bh=VJzBUxja0P10vR42Vm/inrNz+I8FG0lrchgwYu8Mfe8=;
	h=To:Subject:From:Date:From;
	b=vOqHQ0zDVJW2bgug+Ix3Zpkb3oTNN6nDS1sa6L73U9QStZQH/WYG5/FM1jhwHfRf9
	 FEw6nLD2uRM7xs0ee50L9cfkob2vdivumy5EIf9L4Cjg7vzM7GecUkC5mN2mIzd5FI
	 eM6f0iuY922u9WWJvv6xgFR1fVsvgBeT0qkawAeNLf6u5SWXGs9TmH4EKS1drYpvCI
	 DyQ93wbe8g5jNQbj3gv0TDXpoODRyeenL16KMc9kwnncF1tSzJ+R9eTn6cul3rcAEn
	 GVy1PSin2kVgI0mNkQEAsBGUkdyi5jHOr43tZPxk9J9q2COV9KZ4Xwkv4SYqUSBjRO
	 P/iFcplK39z9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE77C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 04:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168447108577.21270.15042520687110539694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d9c331edc434d097ffa3cb8211191df47ffc6e74128bb70837fc38e21190c0
Date: Fri, 19 May 2023 04:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684471085

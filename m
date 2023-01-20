Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB1417F1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D510CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674211325;
	bh=fd1zC1cYJgDX2lDuyiqHbq3kLWNCqJXts1dWm1Vxj2k=;
	h=To:Subject:From:Date:From;
	b=FCJy7Qda3bA4kFJ2hPWFZlH62YHoywnsu4bZ5GkLePYYLdZAn0AENauHE/REvbrZI
	 QXAKnacNA/jc9yzUXr2PgwQ+keBjhPXEOv47zQgBFSpSZOYphIbL0aN1vql7jrSJfU
	 TedzoGqsE5FKVRjrfHBbHQ9+hgx2mkjT5HCTlzfYO6LsSK8PyWm47VZyJD52w7hoKt
	 KuohEDDGd78ELw5XYBl6t0KOAqYwet1r9qQjmJn9i++qZQjnS/yB5/xSBaJCH0Dls1
	 0N9Gh9UnshswaOiyFVdejIT+7XnPIeGy56kCCyguhr6/sHEWUhZ1BpMX8a4FdoqQFu
	 x6PU0gxljVTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9568C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421132574.1013.17930422398419910764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ea266d7877648769c2296dc21d165750dbb454fb3325533594d252290a950c
Date: Fri, 20 Jan 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674211325

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC28D15A6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7263AC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670124054;
	bh=OIyt9Azi0KmAJ2OdMz33hii9369p5IjHrWLeXqKEAMM=;
	h=To:Subject:From:Date:From;
	b=f64Vzu5agUpoOEteLl+c4WX/6fqfYgiGcTXvU0RjanVjs1aSpz9daziKu8i2GvUi/
	 /R9noNyzblcPd9Eoi5OQ97/qaccb+OMmo9UEj/2cdOEYypO7GRANMXKaygATLnsVlq
	 i3Yf/7FO9WZGndT6OeKaeCW0DqBzsF7lX6js6Gz9aTug+rLxkng773EwjbdZ8paqmN
	 rYIxmAxZykgJpMdiP4cJBHnitmV7uR9sEb6D+bKQw2maOaiT+rtsLSmKBKlzjgRJoF
	 HIWs+JJmvD4u15w0U/UiBBdScJWt9hDxAMgyqzqcLy1LkYQ34QbmluI7uVkeLuHRFC
	 QfUc1+AP6y92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABC9C352A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012405434.2061.6568023379848946755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587bc30a3afb7e193cf56ec60d66452f08b1d34786ff50a83982167871520b24
Date: Sun, 04 Dec 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670124054

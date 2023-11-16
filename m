Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17332D7B3
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlZXVbvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95A8FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700141296;
	bh=5y1D/6AavspVR/2C95mmn6lovShJdc7ET4u63WRt8Gk=;
	h=To:Subject:From:Date:From;
	b=dlZXVbvd5lgtQvX0NxXyY2HqEf5i3jFQzAqeIlwyFXs1WiMvm9oALRm3R3VGhmwXT
	 B38DDO9r9Kxl6e6DOqwbLNTlKVl6fCKd32DJx9ZiwwiQwclI+jN3HhPfoKti5JLKb3
	 0VHy4CnKsIlJRSlBZdlftLJ6h80nyyl1hz28S7eso1lKWgpkN0gBp7joek9zoFO7zD
	 4kUw2j3lXf4PojkXK2xG30YMhrbM5EvYlPGSafsLJfFL4SrWziqktKafa5xoyB4zHD
	 vxRFU34HMGsnk7YUgFi8XwER5IDOsiJ4MxSvJ9xmWZzOaxXYjMcPwprOd8QnpshTgd
	 jROtuF1b4gj8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78521C54FB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170014129647.25569.13075348776361390417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8845c7bc2d80ea0cd1006ccc24d3fd0be17e756b46134cc20eec30f1a7bcb1a4
Date: Thu, 16 Nov 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700141296

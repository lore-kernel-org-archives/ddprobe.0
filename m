Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A212182C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 16:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41BEC433C9
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691079128;
	bh=Qk78n8qeS600YRj9gRxM7N7y3uMuwBJbslTawxmUlWc=;
	h=To:Subject:From:Date:From;
	b=G5EuINf1z7vCLPpsHK10JEGjP5nnQA388yhT5aqiMk78ipKcm+yF//nerdHxhJ5qi
	 10l6R5neddVhwbx6crsy9fvHd3pokbjVhMkoRsrZPpB2+y7QpASZNBM0pbVG2Hq+GQ
	 YEb3CcUprf9DNGgXza4+27dcUNW4HN6PzCC+AVmjOAoXxhAQCsl1KEXr2GZRLxve3F
	 VDL6qFpkRCKz+ZZspVwUpphi/EujEn0Irr9xRtzlKecJRZIcDTcvFJ6C+xq2lQJfOd
	 VKdZBMN8DQbga6mRGviJ5CNPBshRYcriX8QuMouu365w6Waq311GDs/gNCGIv+7gA5
	 bnJxG7F1hn92Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E3AEB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 16:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169107912867.1779.2411774376796805298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492e7e729c356ea0059ec1bf0d2042aee6c81e26eb342a180645739ba3c3d449
Date: Thu, 03 Aug 2023 16:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691079128

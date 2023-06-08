Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E39E125BA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 13:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F129BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 13:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686231186;
	bh=g1kqqvU9zhQ8n8s+G44jZ5ShlpVoGBg/C04D7urOfP0=;
	h=To:Subject:From:Date:From;
	b=XyOXPkun1AGxh3krMxJV56VhIrUu2AglBdSg/iqK36cmOHU4xn+WVuDqNo57SAJqr
	 nI7lirozkGE6djFUjTm+ZJqKo8WkySYq6GlDPcPnu55F7xdFlAusmc5I1yfHMaayby
	 ettTr5nNHObyAr6muT2mchmTDjs2kiVnUykiTX+qD3FuzdSEZM9Ig3Y/BmiDddQje7
	 7Kj+5nTCCC7l+L6l+HD0GcZIVdtly4Ich2JO8IZmOQTRdlfCefVdIDXnDOCy6X0UGT
	 a7KeHrTGpilaoR3da7LpbcQo2yG2oeDFs7pK8tix9peEbzzPtq3zRM8mbuqo6h3avn
	 etHno0QS//5Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C955CC7EE29
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 13:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168623118581.9587.740794982742274923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69aadac880def656e04fd10545029e122e476d119b4f02f40acc4ee68c9e7c40
Date: Thu, 08 Jun 2023 13:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686231185

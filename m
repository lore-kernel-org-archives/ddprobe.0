Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82B43D6A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 867B5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664747453;
	bh=2/5AZF1icEA1B8Hm18zDk0Ii6sT9ycAaNfLSWrHU/ck=;
	h=To:Subject:From:Date:From;
	b=PmIm3jt5Ozf/7ZOePbin8pkFQxE663YCkaAwYOfIx0JEH47dTPLFsGYc8U+h9PWY1
	 efygU0xuVeibgvZwjM0zh3Q0vyoDxylgT+2b8kfSWXW1jv6Iif1hRT08KiFB+BAP5g
	 6I8hiUlKnMhsWNOy+y1qCCUzXiHpx/4LAjk/Bp9InfNbDy4YkZj11TfMRudaMtnkqr
	 3+wjKstwoWvxKQCIrYf8pq1XTjVvv3NxA9NlXgE8MSVyCSQjvuB2zsWWl/cNXIzkAn
	 8iLa9zeoTgdWZ0TOpnUSdshTM2lpGG3Jvvq4YOC8VfNnGccKJ1Pv11ginjW6g0Dwj3
	 lZkzIBhaX+hJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C10C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474745336.2625.4266411591877074987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbe67cdee1ca3281e4b6c3f5dd5530e306a0944ad3ecb9e75dd0b172382ae9a
Date: Sun, 02 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664747453

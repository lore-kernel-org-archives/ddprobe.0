Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EFE632
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0450C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684553885;
	bh=wvRkUpA5lq/fa2hyT7Ow542nClwzvB/ex7n9vfC3OgE=;
	h=To:Subject:From:Date:From;
	b=GrPOGH3L6/yQ5mR/8xNQtgJPjEhgqWDVlQKW7SYUh9hJlFXRCdiSuXxiYgzhuUQor
	 6C+HqXBDDY+kwIlYkrJ9bRyyYFjHCk6JXKpul0N3NjEexKX2KbZB+tRU5mFkkHIme7
	 ide3lWvUlP/PT10wvCh36RIYR2wP+INd4qNgoFuhODQKLqqQqoEGbjdXMhmn1xHmrD
	 sPO0sS6WPYaZMReViDGW1kOmuDo5CW3g2shGG1DuYs4Zk59qIF3nHkF9h9tsCnNuU5
	 h1Eaieg90+Y8xnyvfyao1b44f85wxlX8Z9Bi/OTwBaPHVrhrVzxLx48M6N3QgqKsHZ
	 HqWifb4w7TzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E9BC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168455388575.18673.10383173909755413302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb963c4e69523af6f860d529b739644459f9210dacd39b0ee0757f64d03568a
Date: Sat, 20 May 2023 03:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684553885

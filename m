Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC1917E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E4DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661674252;
	bh=Z5Kw3DDZjNldrafknueqnWRy43MhnGRwn8bK3cOmIOY=;
	h=To:Subject:From:Date:From;
	b=MfAOwmhzj1Utf9oOjVESpHsoHlS25TRWFQhJXaW5qHm5mt0AafK+Hx2u6GT45oRdV
	 CRVAB5c9CCDvJ6eYiBbyUWVP/oVK1Qbc/f60/vPZqeJE66CbsKu+phCf//pAO9jshx
	 YxYf9bqNWFC2bX69sktqrxA/dXCbqCaG0BiovLcJblebtWmsCBT9aqRTB7RNmQyMAg
	 WvxUeRX6xlHoiaKF7Zo1P38nbhOCNTdu897kAc8vpEohE0uUbWSKmH6VjNGQbj9wye
	 a9zaUKxkBjqeAKtH/WM/Bhc8+iuhgc+mjXsMkavlRu0nGV6bwJO+ORnOgsjYC23f29
	 QSr4jezNHobmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB97ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167425232.8949.9020624944120628293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9a3525818c45c12137a65331808b248459875ac0b9a010662ff8e80fdc6b4a
Date: Sun, 28 Aug 2022 08:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661674252

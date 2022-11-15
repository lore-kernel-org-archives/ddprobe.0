Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95F18498
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79334C433B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668553254;
	bh=p1GHLYyRIpqPQUcnMig443STdpkA+KOI1yFyZNbY/J8=;
	h=To:Subject:From:Date:From;
	b=iuxX70JI1L0vNUsC163wAng/ppJp2x0tYMvJJIQcaL0QeXnJcmfjctn1qOAcXAY7k
	 RHIilEJgWqwYq9nZzJQ4maHGT7lsxKMnW+uGr5Jb+L8keKoTx+MjM52GeVkUK8jbWM
	 caSHpUdDNGVuuxPRzSVakbBaAcb5U+hcOg0HrNiKw8758M1o4rh7RLyr5UmkLkTNdD
	 b5RyiEWv8sSdZue2+idxuu73g2koclZKyTJa3p1yoLpjzjFiGX07eeF3uJGJRC0xAf
	 NIfhn/Ydsn0oQoa4VJEFKbi4VnjaHYd7jEvl9XM1DmGiucq+6me7I6IfBb8AR/IP+B
	 +P1yon8vBh9mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61054C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855325438.4807.18426651894048567715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fb6a894ce8ade89c5034eb05f0e6465b3ab9445858a523e294c21b2229984c
Date: Tue, 15 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668553254

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76112F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E21C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668888654;
	bh=LarxbPJAU5jw0qL91nij6Yqum567851KbQRtQrUelMs=;
	h=To:Subject:From:Date:From;
	b=WwY4eEjEVT1a+SmHA43EWagSbbOA2ak2xcQOxE8P1N6GC6NB1GxM2YN5JaI852KYO
	 B6RXPwWDkiHAn3PgjJYwZIjy6pdcst88HD+s6u7G8+vhqOnLFwJZxLwghL+AAoKLVZ
	 Big4shZkUp/vpIUmPzrFdEFD+HboaSCpoW7V1fXGi+ccBttixFxGARDL6BZW0IvPnw
	 +BZb7md8DZ2+/JLGb2VX0KELATol+5OmyuQVznytKPuO/BstbUGQ6oWc8Va2nYXCGs
	 KVRrMKdtrAQBG4Ufxx7t6FasrYMqyINMKJdSz51uZfsLK/P0VLY4I/5g1B2yDw170c
	 Q476y4NHh4cPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62699C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888865438.5276.17736181122684625103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ae588dc0bddcee74be20dd51817714bb3e359bde9407328f5dc8af3ca04690
Date: Sat, 19 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668888654

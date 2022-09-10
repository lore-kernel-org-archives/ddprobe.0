Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07437E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F0BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662778253;
	bh=ADLl3IDh5XvWSxLnjX1KHC9nTOMnMynZ++T6lzU9nt0=;
	h=To:Subject:From:Date:From;
	b=Etmwh3oypZ2LRJ4O6MMm79HWG6R8FkOGEl49WM/GLyYEPjN8A91H1nPaz/n8UHlGB
	 p2tOr/ZeAtc/74bfp3F414/bl2/JJ9ujushowV8ps3piIKrzY3FWUIKh42HdWk8DX/
	 F+6qWqUJd57T4tYWhpQlROueuigS6Z2ggMrdOSF1B5qL3yZGiZwHCe0AnY9WY9g1l3
	 SPX74SPNNgWx5kLy42zsIHmnhtkqw07HpHnfRaCqFprF4xBbR6jT7NxLlEnDR6cr5J
	 wfp5GJNkwmkvj1n74MWmjzB3x+5e7Pd6QwICUY8543+eBOsX1IyOGCwh/dFuYIpksT
	 On2O1KXmmjzlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5497CECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277825332.19046.12141685662099686065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17dc071993ee3d921d5b5ef637d1b6caab4fa3b6dc1b3b45deb5dfd50914bd7b
Date: Sat, 10 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662778253

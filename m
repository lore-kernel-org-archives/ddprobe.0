Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D23AD5E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD26C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669752654;
	bh=xR1UbnejZeLh1raaKtCv3EpBA+ZE5qnHVEhLEzSzeBE=;
	h=To:Subject:From:Date:From;
	b=fPfDdOseJCRl0B3RgzfMHYFwjwyaPunB6j67egkNC4BsZb+eoRzMJf5TVuoRbFx03
	 IPFohqDwd81Z7QBjYGFEmxcyIEJ0cG+ylSPeN4u7sZLiQTmGTP3d6UwuO/EOngeWDE
	 75cZGZESZ9QCgio7KwsVaQb1pp7jikyLGCF2tOXJaWKgHtKztoRaK7GZmQB/0r73Yh
	 DzJRa6BcHfOeSgsTHIHklWuKcedYy2g8SMKy0+4KehSVY3rFD6VKDnqbpNxV02qoN3
	 RIwl+Cl0J8Fpx3MFvpJ8pgB/Xxb7w8abdDVGqKx1BNv5oYlRk8DJ/pnO3K4/TY1LIN
	 06PWp0tIr//uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521E6C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166975265432.12921.7277385773032062871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2f4e3fe1f716ea3bbc10a70ca7685c1436653c34ae98426444fdb491e8ad17
Date: Tue, 29 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669752654

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B809328E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697C9C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661506852;
	bh=X/Wl5TqOTlxg+pVcW+z+TpLGguAsNvEFKzW+JX2Bu20=;
	h=To:Subject:From:Date:From;
	b=hWcznc71ZfdZn6xrQssyuQiOis0xojMzoOYxH78nBL3Hs1VqqJ4dDA5gFgfeqgszO
	 krMXYAnzMPA1knZi040ozi13reNhYBaIOvAGL2dkWAcwict9Pl2sb5t1dmXCkZ0G7r
	 dtcJ8ZYUh2C5HdIJ+lZYWqJJMm4Nn2p2LOcOvm5oCItWdWokZi+z/T2aFDIHOsotqC
	 2+1UPo/rCY0zQtYcFl6+KH4J1rcMU034IZfeQnCbyASbb63nh2s5/UfUhXPW15nfsx
	 eUQvnNWFUA5azcvh7gNPrHGgYl01dkqwdR8QNspjw7si41e/UlmwsMe+wA8Hr79Zwy
	 IlEYgERA8yNag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FEBCECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150685232.6256.10886531395042907845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578b8c4b717ccf96cc79a924d359abf58f5171d0d89fd86145a254a4c782b852
Date: Fri, 26 Aug 2022 09:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661506852

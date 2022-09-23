Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B503D90
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68213C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663945254;
	bh=PdFNT1FaJZ/cQmVwzMmBF5sxk5sBArOQFuuQ1mvnDnk=;
	h=To:Subject:From:Date:From;
	b=iHQ6Z4R48cBWhJRSegUx1AASLz/ZtdseMenH+iZWPeocjOQ1ihJ6JIYo3GlYAm150
	 aM1Tn4lZZ1OcnEsvdFQAlLT9I8YLdcarrlsEztqVnsc5uOejWz6Og4bdJhn+YbGaoQ
	 V0k/PYTChZo/qlmO3rDkqAYqexX2sTMcNnxlgQFV5TXKLQAGUpIcWqLP7ulS7VcAAI
	 vfQhqasPqvNHer7Z1LEN8Qwx0qSme1sVasI87K5e7qAsDBt8fBeVbZqtMUV/EszVKS
	 7BEDnfkh/h0Ak7hNMndcUJRUvvRvZB9Jx9lr+YgVw9QBOzcB1vNkxtSEuyochsu/EK
	 9nLia28vPYBrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB0CC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166394525331.15343.8255379096095282644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a1137f4bafe33dfab92d5e7bfe19f123ecf987d97a4958c754b4f820588dcd
Date: Fri, 23 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663945253

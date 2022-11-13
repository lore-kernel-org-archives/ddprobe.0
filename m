Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CEDA31
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BC7C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668336054;
	bh=VDVbzHp07i64pCqC1/VLC89QqEbDkGaOrdh4H0F/4kk=;
	h=To:Subject:From:Date:From;
	b=adDSzSQr3iU1/gDK0gEOjjMFjdWjBBvuSERsjh777vNbBOvj/Tz3B3PW2wsxhubq+
	 Q327fHBEz9xzQqwh+S74z+5pMrnJQnjSnH2bWw7delIiwvJjzSNBYf02xlO1eNF05k
	 cifLGATdGA6LX1FKKgAM1pUAvL7XiPW9U4ZEmiva2hUnUbH2K7qzd6b6bQWvf19IH+
	 YlgKij/Ov5oGpM7+GQ7OqeWmk65HfVEFSTvjeywnSpUshVMHzu+lfBJy8LZ/BoYtuj
	 wsabjcZJgS46NV8jIwP+pfmoih6Sw/VqdhwCcKCMS9DzMq4yAxnXAXdMhZ3aMl0UM2
	 0yE68UUWtXiQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553FDC43217
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833605434.10803.15555011842845148655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db770f875d3aff3910ad3cef5ab56907519a3c12592afe136741643a60eacd6f
Date: Sun, 13 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668336054

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EE1C43A
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75943C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668574854;
	bh=m/S88VTeU46i4cfJWiT++OGmIi6IjpVA7RjZyXDWoyM=;
	h=To:Subject:From:Date:From;
	b=OMi+yURSNlDp8+ya7DAMRuF5C+OLPKCiq4sQP6LHs9UNdlOzF0HDSKHj5/6YOFoZ9
	 CtFfw1wp9NBicI0c28DNUk/c2cYBR+UltxL7MHjydKWqeHUU1UCk7FNygQzLjDIr5T
	 IagYpr3Qkk5Ig9VU5WV/++UJaYDdoOe9ZmPMksod3elHchQutxEoC5rV4nH1BScYta
	 UqLT6Z+l35Vi2hKW9kBvheIhSWYjlXZOd479xE+KuUE7QqEBn1C6PsfFTVngFblobV
	 +WlvwuaeZ7dCEHuH0Mer8fKb1Za+TNrsCpV+1CGN4hWjz/J3Fgt4NFC70uT9D6DhO0
	 bMYuE0P921DjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F89FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166857485437.15548.5688176592212109662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18564715aa225996639f102e529e671920a5115c77d6a48ff23a998a7e98d8be
Date: Wed, 16 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668574854

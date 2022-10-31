Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B5117F2
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DE6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667181654;
	bh=HDeC9AlaM37xBTo0TA0o1ULjgQF0cpBJ/wFwQjbXiSs=;
	h=To:Subject:From:Date:From;
	b=WuZW5MjPVtsK+KFc3PpoXeT4ATse5CUd8gtMCJ4jlh6JMdxww5vBYbZ96fjMAr4IS
	 ABMwh3vxkQf20628AvKlJijvlhXirTuZCxtzjcseXBYLYW5ZxW8e8s9uQAHqKYuZbi
	 72koiaB9q6zgwMc/TLbbiUJobP7/3svpgh4hAISA1IelynrXXdOAMM+AVEFKLu1HGg
	 PfaxFZhe8FJJ1COQRq5yIgCKDQqp2rF7H9iMaLSXSayV3970GTQeZzRgetNvHCLzxT
	 aAPnS0Uf5afyMiHGMh6UdmT3tl/dZeWupRY4Ar02YjD4K4OSWSPoyO7lBhLuUSPu3i
	 zCYfut7zygofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50237C38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166718165432.26825.6570173703553257239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a308c8e48d8a7320dbe69a4073ab05f19f4e1530d0e1f6fde234619af0aac4d3
Date: Mon, 31 Oct 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667181654

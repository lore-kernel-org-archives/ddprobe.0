Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85258F55
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DEF8C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664782253;
	bh=OERCCIOiYJJuBOJInwTIh573q9hgGGIpr4Mumok5GUs=;
	h=To:Subject:From:Date:From;
	b=JgUoRr02c2kViu5x2Yw40DdrPLGzXEnp8TWv8PUgXOENZrOjU9t1e0RiMp4s9lsk/
	 zy7sywzUHfQsRtMOIxG3PGouOBv2mR01/UdEATTJCD3E6Bjq/vSKEIQGdKIjXOKyyM
	 h+KVa803ubNv9r3Gm71dEY9NtPsNPHVP6H6nv9XMxj/kDf5MUBakljFEmn4S8T24R7
	 AdQEY7aTlSUak0S54evADisrWPARFUEPpgo/29UDeJXf0/MONUwXR6/YyRKouraDuE
	 p9ziGdM5G7Tqan5PNOR8v5i4cIhc0GE5+jkSJ3jAQV+KqBebyEcFbWi7c3Bjfp70Rs
	 KTSTjuLTzMKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5135AC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166478225332.5606.5646569852394973703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621f88aee2dab291cbe7d9d051ef44d407c341480465310e9114df8e3afca4a9
Date: Mon, 03 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664782253

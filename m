Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A04322E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 17:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C599BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687974788;
	bh=Vl+IKfnYUDomK4USvJFk2RROL11Sdk091paWQYczi48=;
	h=To:Subject:From:Date:From;
	b=Z/jZH0zKgze9xmsyyoR5IiQC6aer7OyHkz7MNJMTztQUHHrzM6dGjfq4l7LqWJobD
	 KEnBEmUWOmPQ5SOOVu9giGpGDHYq4v9felI0YEdI61jODktlvDRf4u/Kya983fjXWy
	 +mNmIBHCYwCf57XfI/w8eKC9WdY5UxrkBWtkAMxLE5ECcXeGHyC4bwMBPiOW6srvVG
	 15wVuhDFoSp6XtrdU5s0uGGGGAFf06hZRCewo9Wp2UeJ/Rryins9geu4gCyalqZGtS
	 WhgzKuz6tf++HNZWthYorB97o8KcPKTliLuH4kpaHBWFl8LkTPfQ9hLz68XlvkeqWy
	 XqLATlt9OGA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF85EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168797478869.8515.16905880304838078201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af510970853a8721d17979b85b796d8c8a77001006e248655295044c5384520
Date: Wed, 28 Jun 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687974788

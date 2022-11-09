Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CF6EBE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825F3C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668007254;
	bh=RJyXvFqpw+CGxrpthWW4KlOUuhrysVXMsrULNYshFx4=;
	h=To:Subject:From:Date:From;
	b=gqsJgEZHY5Xe+63GBAwAlbXJnfAbJEBCwjnB2HGNo0B+AyWJzOw7fgdT11soh8/6+
	 ULzRCwFGeNHhV42dj1wTUxmj9NPm7LyITABnoi3feHk9hr2KehyBrsTZVX47t9we8p
	 lTdDtjFcZE0fbeQC1/iWq8J5BQL+xjG2xhpPb8GYhlAqDjdieOUhsV3HxMGvmHWXv1
	 H50NFIwUMy7kQMKogUI64ltDdzpPExXjTGmczkAS44oMSlH7nBlADN7rBySlsQveJN
	 ukPYmuJVrYdBfUaUenCVBMtzW6eCswMjMNPe/gThfTNX6SGC3uV9PQDfNGBwZjVeoW
	 v8qptI7OrTFOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DFBC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166800725440.6941.11908195298019530275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9472d503bb37721adc8ed0a04aae64430db6e725a37aad4d9bbed0b33812ca4
Date: Wed, 09 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668007254

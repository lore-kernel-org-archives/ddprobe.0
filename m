Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30448C09
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89C09C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673290887;
	bh=Yu7SDd+RU9R243G/G3HzOYKGVsYJrjNNix0dM9KmGXs=;
	h=To:Subject:From:Date:From;
	b=pZxPXQfRJdj+rF9nQ28ORPOp5FLUsjo82FNaii+EPaA3kV7BYfz3wAQ+xrBBvQ7ji
	 wRwTWLuC3N9knJw97QOXulZF9GeO8pJ3I1xJ3OhDTvmZJLKD1SBsz9sT7CFo89wPrw
	 YNsoDw4PTjVwaflyUah2rXkyimN0f8Z3HfdUtIb29bZMyZTuTL1oYrrbxFnU/8IdIn
	 +6jQOtge7Kq0DOR7Ey1twbQX5IOY94p0wYv+HzvZj9JrPD1ugeh7kwgUlKOqSh/FkQ
	 ljIxOrLeiq4VGPuSbGerrSi+IIh8OjGE1+lLPJNys2KyUXDWfR08kfBXHnwGQCg6Kb
	 F51GYzLU4DN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A89BC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167329088742.30697.3593861772896095026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba67a73db9ed177c8377f424cacfeea62a6b9720c6352ac49ad72e97554ee438
Date: Mon, 09 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673290887

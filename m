Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4701C13
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D46CC433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668410454;
	bh=gVaI026okOE8BtCY2CeC7QuFOERFoWiMl2sJdP2LM9s=;
	h=To:Subject:From:Date:From;
	b=nEJ0DgeS3MXNy4aT4tqpSa18Ndrg83x8BqyY8UhbCWJKYqre2/fzc69wMgVogSYt8
	 r7b+EPSNAseN9XSnhEwwff4oHVxB16C3XWqJvxA60yaAyjMZkyi9u2VQTaQ1R9vIuQ
	 VnZFLcSB9dLlvlUwPYhEGEFU5OQtFvz5JzICCp9vCm82Iwlrur1kY1iTupNwTO4kfH
	 8oWOqrZBS6i0FeulDn5cX3oICX492nkw7WfrnOI3N5sbAeCwBtyoGxG3LyGIMdtxM/
	 dNh7cURXjUMljJJnrFnXIP79CrSIPhPmcukEXaBx9WZheQYclV+SJH7mnsUTVMOty3
	 tM8n7WfWz+l+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5509AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841045433.28362.4441710546310203260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69cff9e5158bd6ec89c808fa8720e21bd7a104817fdd2e4519c1aa0c710f1c3e
Date: Mon, 14 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668410454

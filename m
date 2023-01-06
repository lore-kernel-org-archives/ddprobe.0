Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCC51863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5F3C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673045487;
	bh=21U4IrQ2f1uvuaBSReEAw/DzC69xPzXyTg2nojl5YW8=;
	h=To:Subject:From:Date:From;
	b=E5akI6bHxqSC6ZBcH1Rsb0NtLjH5GksD6iJTgIoQJ54KQDv2Y/IMaVHNZ59DytXMQ
	 DThCkmi6K+S9LSvYbHflUJswnmA5a5YsuMZw4jQygn6SjRzQ3PI8Mq2Ar8nLwPjH72
	 r0G3ddZZGWIJliuWqpTMGYYvU5kKt3n+slB0l0LJWL0UEzOCdWkvTVxmOvIAYI0raE
	 V+FfIPOIEKvnY+7X3H81qj+NtHl91QJAElfT2zcMx2n19EIszySGzL+cIkPIijN+Pr
	 00hreLlZOueLSl5qYqE/ySYLkAWXPk+IEMWJ0GQgW9V0vZQa566Gz/yMBmdPmbcVC/
	 rpF+mvzOrTtEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1961C61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304548758.15423.15549248540611748891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3acdf9a9ba9c3344aac99caa42be1e0e8303211d3090bed9b627874e94b96e
Date: Fri, 06 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673045487

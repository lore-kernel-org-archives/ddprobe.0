Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD606A20
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAE2C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669927854;
	bh=rQtKg2VWfcgH3bc8p9uz4vjY3oBmAivwD99EYyvyWSc=;
	h=To:Subject:From:Date:From;
	b=EQUHJ9a+IOnCcRZyxfT+majwD0041zZzGA1Y0nRR7RRuXrYQnBWSNAmpnKp3R8IOm
	 s/3IqfLpmoEWc9UKIEBqawdRecaeZduSmv8bwYhWVmcPr3LD1u9F5aOMmmyV2bylhW
	 MUU9c8igus432+eRadX52S9rxCdk8TsoXLQWuVrS/bpgRyYj8SkHwNfP5KN+obwYh5
	 2dP3NapaFGfY9BxIlzSa0oWNCuh+d0a3emGWSgKcb7070JkDc+7l36pAY/5sAYPJMD
	 Rl+C4BrnKIVId7+YaoSnJdlaGtarB2odE/ciEewtCn/yqzz7zH7IFRMRzqSKvvO5qo
	 7oLc5SRSju3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59E09C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166992785435.13523.1323106727502498412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f938bba0e20cec330ec4edbe0049e67bdc02da2c3fb1fc70356101fbc0af157a
Date: Thu, 01 Dec 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669927854

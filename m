Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD56C80C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 696A7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665836453;
	bh=ldi5SOj8o3/XL+lycbk5ef02IRtYnArdmke5EJXIClM=;
	h=To:Subject:From:Date:From;
	b=eH9BuVpYXEi3ssqGMdKnPuONklqkCREhBTXEo66XBj7mPLPxLFQngv7VB6co4b6r6
	 NbU1IzGqgcZTGJM1Vb6bCOF0OcnCaYl+Jcs4harQ4T1IOAylA8pS+2HPiYY4KNy+K0
	 lbNTmsroeVi3nXv6EE2880tsS4FR5t9eBKWI2q58xY7NVMyXEZw/GutFCEb+2XnaEY
	 JFXyTt7sMy1OtfDioG99m7zNxCDEi+XFFsJHDFE7VOVXiF+OXF8KXHILUGvS1v8CP0
	 Z+HcrxnyN8LLRuUFMWwMHeRB4+2Me+cvYFyA8QZck3N/0AnQYClwLYvZ8aXBa44HiU
	 FYIQW7VwYpuxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F273C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583645331.2656.4055250869312796524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4064bd56557a6fa132c0e13801d539079ba1424457eea2434e33d1e575740907
Date: Sat, 15 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665836453

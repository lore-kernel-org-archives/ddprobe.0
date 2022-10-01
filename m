Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B527B
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDDDC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664643653;
	bh=puFAU/MLX/5LMl3jC+bJFarB8+Y5wpmvwjuJ6q/Ash4=;
	h=To:Subject:From:Date:From;
	b=VP0SwE79BbsuASPt1J6Tsx7hshuwyuUhPaSSCLASdTZVeMHAMfpbBJLvQopF3IYC+
	 ipJnfAhDYJ/4IA7D9HwI25p/VEhHEI3J79nn71am4DHmlW9xOVYANAkyIubPfjWQ8p
	 PqAdtnnAkvCKQiYbWggCFjXkp0d6JoR3HMfvE8y+G6/L9uRVy3a7tq/X6zQhgYBy5a
	 64CFesgStrws3DxiBVxRwWzt/lnWATwk0lTUucX4k+kZng0VjQ5ybbetz7Q95P7//T
	 16v6Tn7hw3gnoUwPpIqA8ZehhDoW4N7fl6zKgF5MW+4VW/ysg+3OO5RuNcVoKmkOce
	 lsPdq1B/Kbzfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502E2C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166464365332.28978.17281490462913432883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c260a82e3a6236d5c8b955cc43c46c44b7e93251e41f4c342592ec0721c7f75e
Date: Sat, 01 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664643653

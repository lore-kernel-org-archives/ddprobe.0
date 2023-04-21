Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518A5670
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 15:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6153C4339B
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 15:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682089745;
	bh=xbTvkBoIPG1NDuz4ZYwQcRh0eARINrCZEgwXAubsSc8=;
	h=To:Subject:From:Date:From;
	b=tmiqzRiGkIWdH/CB8bxdE6Rg8mrqxZERIXWkUAOSpx2Ter4kZ/6n7oakCowl2bSX8
	 QdcXO3gjBmx6S0+jDBc+Q6wJv1zZ8zquV9VGKwNtReyWTNTjvuNk5/CF4eqpmzHYj4
	 6FQFe7NPfc71IT1G9SCwktDC6agqAGminLGH/coVNwzzgW9Gry0kpW4ife6oibM2KU
	 voC5UsKG4e0Nps02SOdoxVCXLnWAUANcdP18q4hgE3mwR4bU0FPiuNXqygLNbMMxhp
	 qcFtwhCWzK98wnHvvelNxprmbq+g551rVP349UskP4PWOVf+JyNBltT6or4ByxW5A8
	 IKXJR927E3snQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8A4C77B71
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 15:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168208974576.8588.15856423907987187900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ef4d978dcfe672d2c3e47ab80f567764f717afaaed0ab1f2f63f2b050fb5e2
Date: Fri, 21 Apr 2023 15:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682089745

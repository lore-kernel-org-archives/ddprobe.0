Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCAB80A
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77641C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668230454;
	bh=hkZCXFVAMqBGVspdfnC1b/87d1MsBWRkUiCeKaKoYA0=;
	h=To:Subject:From:Date:From;
	b=hOSS/uRGyB0nR5GpKgzD2SU0k4LIAot/Ufp65OPhpqqceK+cZkFC4i2ToOaFaOQ9J
	 mky626vO0EjGTqI0DoreRhZ2IybN4epyGi2MkixZ2jflaK+oVln1auht79BNgn0RMt
	 3C1+fsDOrfIamNYpFykqU9PubVl093TRMSyeIUyEarYJ2N7IU6Kc/FWLdqQ+uH9Huo
	 2hMG+NXaWacGJ0Z3OwD7Sys/p4t87VD55KRFE4KLjww5XstsC76/Tenpp4LbiJ47Qk
	 Cx8iLZbPx2ieLwaJtqPz1i+WCHEJ3cONwaI4smW1NR1YrX9G+GsnPhYblmDzJsAUUR
	 tmx77eE8+URzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A3ECC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823045433.28865.9265140749856789403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3824b4331f39bedd177b8da7616fe5cd2e5438399dd3d3f00dc5bfa6a4ac7711
Date: Sat, 12 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668230454

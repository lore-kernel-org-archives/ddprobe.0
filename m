Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC38E2591
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF00C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667664654;
	bh=1Ge8uEh+fRgOkoXorAObYFlhmSIt91rIJnH5iaGy9cs=;
	h=To:Subject:From:Date:From;
	b=jQBOEE5CD7R3kH5sZZw1R9hIPU3UCq9b2eLajWBpj4y/O+phXffLdsGwfg/Q/6R6P
	 l+TxEZLYNmjPmYrf/f3TknzVsNABhcuMEoNoehHIyLUbZVOkJ/tDRv0Lqncbna4WlK
	 Go3tPlXFQpCkiaMXZOSl2GLSf4OVF9fuEaNkzGXtjOWQrsYeGzof97A2ixwcedXbk7
	 UEP1eaoHT8sCHmzqDNKxvaysC5us1fGtxsyBl4fNjgPKRwBsdqrx3QjqJGzZJ5uw6d
	 MlR11+EpqfrKfxyS3yPG2NsP3uMODnWT9/5gk2hKQcaLUinnTYIOJL40BCE/Nb90G6
	 w2MkJn8cueH0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61ED9C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166766465439.7862.5118529618545679556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a05aa1bad6750571626c09a1785fa99f627a014e9f78102fe6f2702085cf24
Date: Sat, 05 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667664654

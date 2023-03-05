Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283002F26
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7BBC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678039025;
	bh=sPAOw7PjQWOa5xtHizICuyq7Q5x/hOV3tBT1dJK50yA=;
	h=To:Subject:From:Date:From;
	b=rCVEXO0tM0kEm4120PxXA2vdsJsFb04HmYG+vJB/Uo/+2jA5U3lysODHErjUZ4Za4
	 GUMfVExYjK1+cYetDxP8GWPqEsbYIVaV16bhYqhAjKKUXw3ZIu4NPntH70HRAd6UgE
	 JKfgmdCGamMojO3RtSJ31jWoaplg4LtiQYhE1fNbkf7O3VKE2G9iP2nbp4RD4J5aV8
	 YMvXQouEY43i0C6hwyRQIpiXJ2wP5pWe9a92HKDtJq6tfz42/dUoevYkY6kIMOoDV8
	 r72+tavDFy4gZRyV3yU4wQnXdL+IikRLlmrUVSXsuvpZXI/Sy5A7jj8d4Vo4pyPp4Z
	 S8GlyJToLdZUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B758BC6FA8E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167803902572.31416.1918976008735902879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a5e349b4e1c2ed23921874b59b006d4d6b912d6514cb85f0c0c7dd5ce35223
Date: Sun, 05 Mar 2023 17:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678039025

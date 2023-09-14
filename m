Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739BB7F
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 04:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0586C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 04:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694664248;
	bh=VlZU1yQ+fcNWbnq1NJ85eiES+ZUtVjafL3ZgBYBD7ao=;
	h=To:Subject:From:Date:From;
	b=pha8nYSXfRWT28PW9dGhXPV7AiuB3mdl4xAPw13uBARJOBWdDgATl9OUIcySE/HNu
	 UnMC8nga0pVMjEWkeTiL4Cq/hvpjZI+RR7rSBEbjiPStW5WaCnyIgtfk2CB9fY+/4R
	 zPoxklomBeYizQ15kqbnE5F0DotO7v6lPJfRTA75X+5ZbtNGGFxA80w4T3j/z44PV+
	 IoRbOFRGvwiHFlQvMBqlHcJIz1arwWdpCgEXBZa3c3Fsfm4Dbwd00gWXgvGMDXLNJM
	 KD7kGLEAzjqR5JjP6TX02G9hngEIYibOYrmRKPBZvPPTb6smCgPcbzi3UkE2cj/PpS
	 /aOP1PBdceofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A38CA0EF3
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 04:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169466424871.32216.663533065021018424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f269d9afa72e28cf9bafdb1ba096b9dfcce94573fb22197fc46682448edd03
Date: Thu, 14 Sep 2023 04:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694664248

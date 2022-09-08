Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1D77C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F26C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662620453;
	bh=bq7K7eYL5XrDPr4ou7rt8Uw8pVha6AQl/fQ84UAisNE=;
	h=To:Subject:From:Date:From;
	b=TBYwRSQPrhAaMGF00Yi3PVn/K6hKocYxfWoyNPozKl1tFb3V8bHAYVAJPBAqN7fzg
	 jaoYuoY/h8Ra0oWOvSacGlRHZXDGHvyPCwmXcKM7ZgCHwPdNupc/L2dslENGxr3no/
	 jAUVpsofSQKnWPJ1YQLbRoFLrC3bTpHvfstyVpRR+7gK5TsCxaz/IOC1o1NQjJc0VJ
	 HgYNy/PSgxWZTB1jwLSlNjTD28dVNZCnDGvlBYXZwZ21WbimQFlK+U5h5UIZaEKqga
	 tc5CnyKD4dQHP4IUU1N1+y38oXwgi8CE3y3W7uVUC4HveSjnUsHd8cWfWvXBc4Xk6z
	 q4uRdsq+IEqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59554ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262045335.11652.2554291542222612652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61461981c0b110b57ad04a38c668c9bff314632865794b76fdac86781cde09d
Date: Thu, 08 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662620453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0E1C143
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 18:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E189CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 18:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683310625;
	bh=FopVKhCcvS3o1vI8gZ1VS+mjfd3Z9tsSg4V6T0bBTMY=;
	h=To:Subject:From:Date:From;
	b=bFbHyIa3KWmSgICOrHFOT0NzshWogJtMe2A/Glg4LEVzH8qS49Dh7Ff7Pq2JWtimf
	 LU2KgkGb0WANcXicYMeZSeAXswFE1kyt7nWT2GjjnVuA8SZxbG0hfARc966zkQLUuf
	 5Kyjbl4DPW19wykikpbWuEMf64879+PVf4IIyCmAcW3JMCXn9+yYuohnDLjX48v5T4
	 ajvKXluf5gBSid4/ldjH2vzTIvQL5b25jUzfSfZPON52HLAmqMbtJO6xkU3FotbGvX
	 LKUg+XUn6Q7fdMse7/8avsbWf3bBArUUHe5kIet63nUvsO6+SO+mUFo1gt88F7Kvm7
	 uhAi7LBWr4EoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9BDC77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 18:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168331062576.18835.8359598765099621145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e6dbc36b45bbb066607b640716a6300111a3b5b3895303d1843411493711bb
Date: Fri, 05 May 2023 18:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683310625

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A81E7E4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC69C4339B
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678473305;
	bh=NiBPDm2sHAaGj2GiWO4uJBspLjWnCiMbh0EiI/6KmF0=;
	h=To:Subject:From:Date:From;
	b=C0CnV/tUSRutdLm0fZ79O+pKczalrnmKL0t0B7TH6Uc+I9RpQlGSSNXstcY+6wufc
	 RwNie7zKqxV5YusfVlPDjv6FpypTq3tnHBOHGLZMS4drqKzNn7JbQRjkcm07Oa/b8V
	 mo7l6RLOILb8GYH4QHRTflfPSqxdhi+Rx2UgWcFZ950gIZdD4GCUw1TNYkO79fcbnL
	 IbcB+OnO3Pdd1VFpoO88CgFyxgWBMB76+Uf+Ko0HtnlVO8jIDOWVfIb6TMjcsKFr73
	 ampRZnELYipaOUbcruc5bPKPkprwXSi4pUBZW77fQuI1DOLYtH2MDfSQ+Di/CNw9Yr
	 RVW+KuZCPE13w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B45C6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167847330572.8914.7946806949635901753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f043f5815d9529574d10c34a718abe965ad3d49e1812bddb77deceb83dd9a49
Date: Fri, 10 Mar 2023 18:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678473305

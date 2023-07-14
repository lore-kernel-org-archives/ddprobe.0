Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA2F15AE2
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 23:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75D2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 23:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689376868;
	bh=lXA6ao1BGFaNvUtLtmbXhCdJfhYDgOTp8rNDiWRF8nM=;
	h=To:Subject:From:Date:From;
	b=c73sHOcCiTYHrxy5Q1OKgxyNYJDtvfM1trJMPV9glV5r6IGuXaNobYZ/Tm816GWui
	 J2NiuW/M1ObF4CaqaegHQLi4844onTKued0JZq2+hwhIYctv97ltZZvhFNKsdgqswV
	 TYpg7SMWqtPBRnhxLv505BaU2dh5+ROKjmC7KEo6zUbZh306EinjHq4hyKTHrrnNhp
	 SlMXB+kVAK49vbjmsRb88jtmprwJl3dM2z747MYJ3VICGNZEUG2rtpyCPK8Kmr90Mt
	 sMl5IdSlI2nx6lGNkXVEbYx0/HyTigYNW4s3YfXHqk6pm4wvtBIl7/ytKJzLknaulP
	 S6QEI1lrpmiYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4B0EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 23:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168937686873.8837.11875424768354561438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b7d064e45626ad152f468ca1b9c6e4a320488bcb460061ab7f5df4a982c79d
Date: Fri, 14 Jul 2023 23:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689376868

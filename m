Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1694A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E02BC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673118687;
	bh=JJZSqgg6CnxbrylqJSBi0k1StJHzeHowMgA48jS76Dg=;
	h=To:Subject:From:Date:From;
	b=l2vVIezfWid0IfrZCYKkR/MbqKSw0GXM+UTaAQHQrGw6MRZaikzoBJp8shMP3mjSy
	 cIUuAVtp/ZghGgwKFcekHM8ceGUG0/FIb2HSFh6vUwYBTmikEi7wGoNDScpJ0oqI8Q
	 qGu8YGEaZHq4I3ZhyAjqp3Y8hm8jLBi3fW8hoHOrojiVhmxH/Re80ik/L4EvG0Ge0u
	 vK4NF/TzjoRJi6D+U6Yu39VOQTMJqDuI/eW/MNbrXFTz2bXmTSHHXmCyMZ3hGn7Wmv
	 V+JFM1Ipn7Ae8wUvOGXW9ZQLBmpU/ZB2sJTE/+SKVfRoAnWoUA8PHuU4+DhpRHuJyF
	 761nWUsHkAyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E4BAC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311868744.24955.10264167219385628652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ead1c7981544f91e4c435ec0de6d2753d5fcb4559776ae23df7e10b9d71c82b
Date: Sat, 07 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673118687

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3623953AB
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 15:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A27C4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 15:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678894805;
	bh=YOIL62/RlCcjlDw2Z8C/jSioNCYBSGPNKLpEOSO0+Tc=;
	h=To:Subject:From:Date:From;
	b=uUcARD1gGuz20gGav+qCGl6riHtH9kY5mWvJoObTuulwLVZ8G1A3Z51Y1xzG9DIxd
	 U4NMJxaah6Z/h2OeXfs+GfC6O8UTNkeplI8yUTeAVaNPqEIDprhreDMAwGqLWzGep9
	 zKejJBvOzogYkM4O/95Jo8xIynm9JKnakTIOmuBM8+ti/0dpWvH3C22nTzOIWvCBAC
	 2Mrf6DgUYWtBjkLUyNRatzyFc+5OPe/hpFE2c+F6zbOFqdBx+XEHIdUs+fGHw7GxBb
	 STEi2W/Y4WixQIaagvrdM1wtj5h6643A34IqpX1327lzCeiWxe3pvaP/wcPMRN5SeS
	 yeczuGN9G8qSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD509C6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 15:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167889480575.959.10988748107561928515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada125ee519c704431aab5a0172777479c979fce1e37dd63577bc8b2717a7b37
Date: Wed, 15 Mar 2023 15:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678894805

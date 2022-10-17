Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C130D137C
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA4FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666012853;
	bh=1HVTrzH1UtKm+tkP0ytAchLSPVc3/7An+0Ry1bokKOc=;
	h=To:Subject:From:Date:From;
	b=q0Sf9NyEFcXnTA75cu+zsGiDBv61dn0iNh4dA4NwDqw/2vkwZJkI8BLX7i8tP5M+S
	 dGb7C6Kqq1HG8vxZVNITvVpG+qnPApaaob4kTI8K05bqF0TiAAy9kL0vg0mzaYvGu5
	 PCqznjkMC+XncpcfyP2C0JwAlKjEMDvfEuK+uYa6fVtGaJcg3klvBfvE8cs3/Eb4oH
	 jZcamLTUn5CpyArnCShZsGyAYzUkgbYynG8B+eJU+6Fc0kqb/jrlpY/8xyFSkLTYAy
	 HAld3K4y+/IQv0h5fKpk6sooVyPtYfA7CdX6xJ9UPL0MovUEDtCrcOcH385m09w7NM
	 9Wbibq/c7vm5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5631FC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166601285334.12219.9522429180113660434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279adc6dd6099e43282a17f611cf51becb602b0aef079a9520284b44db63f926
Date: Mon, 17 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666012853

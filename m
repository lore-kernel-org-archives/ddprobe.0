Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA6D5C9B
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB42C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661804452;
	bh=Pagp+0VX8Yk9OMDgc+Wp6MwuyedFGeAo2aMmf4pZEzw=;
	h=To:Subject:From:Date:From;
	b=X/kYNAePfFD2YcBR6Nr55niPZJZNVGKqb9By13/TKC1Pfgo1/flBNerLrgDk8bp3R
	 Io/awdoulxpkovjKWsg/AMdo8g17X5VoHxtvGSOwU33q3TLrJoreM3IVUV6LauMlCD
	 L7JXf1GqmRLQxoiUlJ9oEwN+QTyEub+fCU5+DeSdDa4jYhpbjbyhlaRGxyY25j1lmZ
	 pNbXZ+Y1brf2PyLPBvnGdeQp5ccJn0VPJARgHhbNzrYFI2hvGvEgwi8deXFTFAR4Rs
	 EKUWCXYtCGU8Ec1kHIk5qDl0jO4ziGkLEoL1IhLkne80pT0lXFOYgf+InhepUjKxJV
	 00g2XLprzHlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D6DECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180445238.18507.15973941118463550009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aae75ea62a632c8b2423fd914705f27f22a79cb69c4128686b98a382c536b0b
Date: Mon, 29 Aug 2022 20:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661804452

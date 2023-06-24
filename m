Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7718C1384
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3ECC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687611788;
	bh=4Hq5Z/56B0COLl/DvgJuEKGLHym8jOSvryomw+pyNxU=;
	h=To:Subject:From:Date:From;
	b=oH06NPI8I7I/Ebowj6eZ58q8VvnPiw41GZQxklQDOxDjnIFRVAi7guyUngkPpFLrS
	 Pk/9EmheRfSUXVLzP6yO4fd9XOiYBNxMfXgdTzql2LRBGZJ9XfzyFs1LXwGia7Y0/d
	 KkNcZ9BVn0VGbXBdxeCWP1CoD5cDfp4V9C/XTDb+3/SB6PF7FGFsj5d282MFInlI4+
	 FWlf9o1bGUVZw6V27TiWbIDc6ofMdXA93k0QtOGlROmS6b70kSb9mq7Yz7CGAWOO/h
	 sEy9febnEZRmmQXlhwxV5G0NossNiY9AJTmFAfFmvNpC8L6QZ5STa6uNjEJCtmHQP9
	 EAOreE3Xvt8wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A03EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761178875.30096.6408625597768927740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfbb1d9331698005eb9bfa5c27ffe4d3cbcb79cbb20a238abf174f57ffde68c
Date: Sat, 24 Jun 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687611788

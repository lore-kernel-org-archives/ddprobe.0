Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD4D7E29
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707EAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663709453;
	bh=3+QNVj8oPeBh9ow72bJ+rSqfHORCriUo7oJAZetP72A=;
	h=To:Subject:From:Date:From;
	b=oWu14UsSggoqSTGmkSX5gSkGjMG9CU2qqhD8MXc0y0ZLwoXTYkOBovGkh+jv+F5rU
	 xykPsOT6eVx9cbx30BArY5Kji1ckD3/8BQBrv6j7RKfnjclrkKU/3OcRsPnfLXiVMO
	 miVmxn57qy5IS7bjgpA8QPMBTZY2RtGGQefAFNj5708J2eGaHJgH7r8adTJQnpy0PQ
	 ggu0ITHy4ZWKOwniTrK5g1iQMYVzRoZ7l66N3QnnRq+mBdIqjhTUP1HUZs9oxY6fAt
	 3u5JYQFIeYxMuO4Yqk/Z+OBprlp2nheWGlrX62M5q/Wc82mO9Mgp0AhU+lIPkhbFNa
	 ft69kHxs75fNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57347C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370945334.28354.6692994497657258286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc9844075b3ef4aee1132e8fd7b2faa934cd2cb84648d35fcb6a93a1c2854a8
Date: Tue, 20 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663709453

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE83C620
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 769C9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668130854;
	bh=PFc066sxxbPnXIbVO7H/YaIXfAfHI5XIl7KnRLvWpJ8=;
	h=To:Subject:From:Date:From;
	b=f7fPLojdT10ZDAOEd9IeWvfEzbSXZ8SSxRMJcvV3RAOs0APphjlkUGLa8mtO5n384
	 K2vcvh6YFppkvFmo1TiCTKU4Ykqew7v+SbLlWMIiGcCtz9KxWAz6uSlesNb3o3TpNe
	 ISZGvpFHEldW0jaYEMJJeaVBo5avN4g8BxJCA6VZXc+m3xxqqbUe94NOpX7SRUlN6X
	 LN5Jqun/JghHLVpZdei9AqQ505IUXbNdcZb9KY9peNd8CUOVQVFpwhlWRRwObyBE0C
	 Mg+o9Y4ySs30h6GAwSX4zu+Yb07zwsWMYpHai1WswcvcdBQvuXFW96+avjoPiAyHOi
	 cxLDrktEPT/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C016C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166813085436.22217.11722202597756880406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3474a029f69df1a5ba14e4c443e145a2b6e737be659b51d15d78145a2e10518c
Date: Fri, 11 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668130854

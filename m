Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23B3366
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5D4C433B5
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663381853;
	bh=ytyAXykZPxY6EM8iuYRYcTpK9QZXhoFf5O/6oECWiDc=;
	h=To:Subject:From:Date:From;
	b=NHgx6V/wk7Mn2cT9AtDC46C4p8L1FGzxxuSNDklN4mOT/1X9FS6Y2GlCI9X0hSsGI
	 1pCuJFC8PTSGH069NNlGRG2WsgqjjucbBG6ffdziU1n2kv/SfRrEKsYBDbaXyexFEV
	 NTVucBvBoU/ggH/x6PXHhbNF0gz3m1aGrdDRMmqnfHO5CjkYOyn4pX1hTyAr6PEzP8
	 DX4ntgb375EoxhSFXrJFTPp5/9VIL/terKDEMvYqOc46nj7M54+fuAFdy8xQINtz8H
	 TPZ0i7hkE4xq2VMvmmUYat4pTfdHWyv/1QuO26IjZsH38oscc41+jrg3AoiqfsgnYm
	 NSBQYz6fbEj4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C86ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338185332.27458.4412111735217893081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fae6090a4f615a742dac5f68cba17b9e78b9c38738ef46b0db0ad3dd7ed4f1
Date: Sat, 17 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663381853

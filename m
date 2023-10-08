Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9D415C1
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 05:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDyrfZ69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEFDC433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 05:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696742228;
	bh=eqeVB7P0GGeK8SXoLdrgSYxe0Qqje+75tB/1CpDl2jY=;
	h=To:Subject:From:Date:From;
	b=SDyrfZ69FILqmTn/ORo4LsJ/Jvn+fd7gdoU4K15H3R3Paxxs7xRNG6hxq0yoDhwaI
	 DvDv59eXRFDhXKa7bCapOMskRUrAteDICW6KVEDK+uJ+hphdKDlOMaUjxO9i8TglS7
	 7jDEqliB4YLnP58geaI2ii/7ZvJYNu+ndBjMdqOc3SC4/uLHvNURUYgP7HXVSJKNP0
	 lAPTf5eLPCipXx84EgA6TNFnRE4OTxDpoQ6A0OoIgyBzh2yHkeR/GlQA61VY7RQD/q
	 glmrKkKDwR3l36h34S/rq3TlqOppSPEir5mpBvIsgCHNloDM9DEw7iDcpS9kc0/VNO
	 mHoWHGbYCwOKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA68CE95A8E
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 05:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169674222871.4978.14829386264475372500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0b86912985c1548ca352a9d985f217007823e332dbc42efc280883402cebdc
Date: Sun, 08 Oct 2023 05:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696742228

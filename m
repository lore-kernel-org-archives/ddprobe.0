Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AB81C7013
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750491594; cv=none; b=kul1bVpqrLrjowbcUDVzcIzokcCZJxyELsEFduEIbznTelnlGD4WNGl4mjnDLizd1g/ZPyczpU44G/dITIupLtQniAmZVXIZDbjwB0Bl9bldlcdNpqPf2h3BmR6zHjKwwrJMBFTcyS6NS+XYXIGwcD5Ur/amgD7jTRyLtG5mqVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750491594; c=relaxed/simple;
	bh=b2jZZw6ZxnXqQgU1IycH0uGrPez7t6fqZmuSNlUFnkc=;
	h=To:Subject:From:Message-Id:Date; b=GZ33RqVftBVaSuE2yRIBwkcF2I7aoZDAZPmPlVZK35FeuNS3/yw2DwdLyC8/GYjeQIkpgYhz7nxakOJ0PLRYRklyPAteNbxCyOGWeruXRFfk6hTXsvesm6EM6mfJCQRfFEyHFgNAQyrd4x00oJg6qKRYI765GOWsmwM1iDe2UA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFUWVPcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFUWVPcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08ABC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750491593;
	bh=b2jZZw6ZxnXqQgU1IycH0uGrPez7t6fqZmuSNlUFnkc=;
	h=To:Subject:From:Date:From;
	b=vFUWVPcmff8JQq1ADYJp2MotMdvkPo0zBWLV9P3EtCvkozTB65Hc1sg+uuonoHmWk
	 qhX+j7AS6ZRjROPYp3tjgg/kTwkN9Ns+kivBkBRLSh0BF4nFQeyPySmvZ0rd/3C2qW
	 RiPb8Ov11Tl4RKuch3GE4wSkrFeKp0066FRiF4IhSPWa33fcMEDH0x1ohpx5DYhnJ7
	 WMOvhmi0DGucF3ATHbtWXWI+2iDlQzcY9q56XjDNAHdP0l4Hxq4pH/Gzg8osX8TwWn
	 4MhthZiMB/gD0ex1kgJYyOVrcsJNOVBTHv6ve5qbT5haL++CaZSpG65M5wlUkRvZEW
	 pmnEqR3ZJqhrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71AC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049159357.3455.7240160338611672570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946522ac308c33da786fd5784f5aa723733597c388eac0b921609c228d9579a7
Date: Sat, 21 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750491593

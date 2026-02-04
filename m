Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E35E2556E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770226434; cv=none; b=UC7FSmphLX/E8MqtuajkFqIASwGvANGNbUuGb6PbR/ufWMz3wLduoHQprTm5CAJYgJx56q4u5751ER4M2NJLeA9JGBuIGzbBMwYlstXHA5gKwYBKSIy8/19ogLzMRN6MtcjZWU1kV9O3sjcA88d4FyjCHVca84BKRIQZ8QQ55VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770226434; c=relaxed/simple;
	bh=zurY2LgbosLnJQ3KlTTB/Vq85VdS+cASALxLOq5yDKI=;
	h=To:Subject:From:Message-Id:Date; b=CHGIIUMAiP29L0I2Lvi8PeYzWyiil2wMpxHlJgDac9LQZYB3TyctMf6toExYkVr4mFNZR5SdyKOVMTf8o4IAVu+f/0x2/F+o/eqsV0eAvuYlVTEEkbmRJ+nJz4Vw4AwsyWlM0Oq5OH9pQrrQPgNv+igSlYw18kiFXaTaL7GRCeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX2l7+z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX2l7+z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DFCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770226433;
	bh=zurY2LgbosLnJQ3KlTTB/Vq85VdS+cASALxLOq5yDKI=;
	h=To:Subject:From:Date:From;
	b=LX2l7+z8V5pv1xz8EF8mNNmD4L6lNl6wtBcoe/OR8+nHNHd11EFEtU9Nap1rzoI74
	 uYzSBa1I8O9senw53QWbxZOUiGop7vnNYQSskCo/U1LCWT6GXsiWdu2+Mu9pCWAO0t
	 vrjf/3dg7xeCHUN/pI0GH89P5iwczo5nmtRN/wYmbV/J+a3zdKMcwHG2nueG1eedAK
	 3rf5GMdrolnmcfoIiB5kPUK4Vb4GjbZ1qVraiVBvN/n72vTo2MNyHFlv5qyE9kRJh7
	 zHhquFoDuP4SC42dgWiqyNeQsS7jMcG/T2JuMtoldj6S70/3hft6rwOku076ftdavI
	 jsC3NY2kF8SRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D9CE9D41F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022643361.22956.12721511903421673319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c049cc89ec5f68b18cedffd909ef97e068838baf0195f0437e42b86e5cf52217
Date: Wed, 04 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770226433

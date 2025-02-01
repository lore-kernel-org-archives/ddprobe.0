Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3C912A177
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738410354; cv=none; b=mrE2v5D04k1khYekW2drelojgHPDdAcrqlsIlj5s9Io1zPpzAk7jWfkjqd6VCPkUQeOOlX6Am2/wK/5IDePSdUH5wooBbzXT0toCCOrAr9vYTHI+dFHYecu+ACjOzMEU5NlncToWRx7kydUj9SUoE9n6IfGZRIV9judYcpzSoII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738410354; c=relaxed/simple;
	bh=W8HOU3UgGnSQ0+RaAAa9y2bu2yaqkAc4sLAgseSjJfM=;
	h=To:Subject:From:Message-Id:Date; b=l75DB3rdoTktX0Vk5GJasGQn4IJZzEyLQDOPcUYwhIhpE5wsOt7nKCtbNj2ZtvoqofJyXqHPGppyNOdmNoapdp3VvG2hxfA94Pmx6MmLvu8uBVxWiCP0f7JcXs2Y/0f1V0Flkv82vDP6u6G1Y9xJimbB+yH/bhu7auy72w1K/0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNb/hOVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNb/hOVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0525C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738410353;
	bh=W8HOU3UgGnSQ0+RaAAa9y2bu2yaqkAc4sLAgseSjJfM=;
	h=To:Subject:From:Date:From;
	b=LNb/hOVRZ/2ZXl4WJVqOotN6stvP8lE5VlGE5ICFzSHGXuBfGCIKDX3mRWJ6yoSO9
	 fc6qgfu6u5BbPto/uhFYvDGWAW9+OVi6DUemSKtze9T+7jnhYIErk/qF0eA3nDW6Gz
	 pc1IBb2iijuYts8f2TAGNeFFj7Pqe6qHmsX2GtbPGy1h3Oa7klpPMUP7PEq2Cl7J+s
	 TEmMM1Z4hEOWfVJQAFf2zXPE5TwYNOQ6l7OoW+nAiKHu/+WsoGjkjoxW5h3YiNHPCl
	 oQKyyep8Q1tKk+unINq7O9kcoYBVTpBZkYgcxENhKqR47/yv4g81O2mITcj22Vmr8Q
	 Y5E1hiL9Ixr2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBE1C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841035364.30886.17488783608415690178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d7aaf016781b541348271b3e2b363aacdee2f8c0ac281235328ed1cc590bb4
Date: Sat, 01 Feb 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738410353

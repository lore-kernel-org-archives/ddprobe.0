Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF7D1DFCB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721234723; cv=none; b=Yas9ED9ci3fYRuxmM5sCdIDATQBXHw07XOsGn+ABdtmu23FsuBwPO0vmYV0JcRMdn02THZ/HZxkxFCl6MjTCyqDx1U47SRvC5QTtbjLienOXIraDb/mncqMCXckLrRQTx/5cuEFZLG/hbLzzXMLfOCwGruMhgWI8xqubEAcoaq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721234723; c=relaxed/simple;
	bh=4P1Xuz9MgogjRMV+pCRPUbEc9BMOWBUsISIn9lxB0/Y=;
	h=To:Subject:From:Message-Id:Date; b=ezlCl6C6LAqtGuj/i8HyaiSjJqXnU/ht1PsGQi9IFJaj3bfK4YkoFqaTLBfRqKkKQdc9LZZBvWJxc0AIa3sLOEkTpMQ9MTxVnJGM+34QOnMXl/+TooGU10ioClRUZROSpVy4vU+Mj8UXxfoaNxvlHIl0sqYW6nWrdccJppTF9AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5xilfCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5xilfCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D687DC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721234722;
	bh=4P1Xuz9MgogjRMV+pCRPUbEc9BMOWBUsISIn9lxB0/Y=;
	h=To:Subject:From:Date:From;
	b=V5xilfCynsMtzxhGDMJ1wfzRAdUCU5zZE4Hm2ts7JBkX+pdWfsD/OeD/VhdlBcX4b
	 el4f93QeEDt3bqhXBKSCidiZA6x0cUATnu0wtxSBNRkxoWYYacOeTC2ruVtYQmxHOu
	 bylSQZA2GYPnu07MgScUwELACS69SZKnQXP++VMss/gYmAYu/1caYgRMlPmOiuLfLo
	 Gnuo8EgK/QVacGzhOJ1gx3evwzGBUJJBxKBFM5FZ0usfNM+wPmvbpHt534of65VQDt
	 8lY9+7LUYuvvz1Pys9XPqp6g7JBj7Iu2HzOBKXdgMTVsg8mPR5VxsDm85+L30QGr2E
	 eGjNteHRxPOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C487FC3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172123472279.14013.4496945845366354331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7962ad24237e84f812a24238996cab4802522a45e3154aa46130aea80a63f29
Date: Wed, 17 Jul 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721234722

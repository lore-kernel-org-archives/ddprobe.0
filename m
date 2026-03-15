Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB062AE8D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773549294; cv=none; b=u+7YcEkHWorFr5N9Q3hYYibWDgmGYXcAOW9+5V2WtsTxacZTAPvWt/B1+ZoSbo2gCRIuIh73vOGoxPvBDPyw8nNC/nEGBIlsNwQbqymsVXMzL2a/2EHxjSY0NBCP1KNSbDrrWpOYzT49mptIZImjJMqv0K8blTENIjX45Zl+3BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773549294; c=relaxed/simple;
	bh=VWsd4GM8Fdqo16SVabQYqffMmBmkSmdjTc5Ot54QhEk=;
	h=To:Subject:From:Message-Id:Date; b=id2hXiB6O/XakPMSPD+3sIfpd7U5Adt8y8mvCY8ZMj/bjFaNv0NbUWUscNdo5XRRAx4vjb2xLYliUkd3GtKZqohkTvJApe2J6Vin5rBK8rqCA+3rMLqbx0jhnpj4Bg8FlJfPVO6Y+To+ba5n0Ju6w7wd5EtHrtnmU5RqWov9FTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUbezQhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUbezQhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75DBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773549293;
	bh=VWsd4GM8Fdqo16SVabQYqffMmBmkSmdjTc5Ot54QhEk=;
	h=To:Subject:From:Date:From;
	b=DUbezQhVBYa1FrjUAwMYmoMVRbdqzFpuJE+Qso34tSZHsUwRc0pz9d6CBZ8e5gFVt
	 XikEmAQ+zsAsyf4MZoefr0YjjhxZQ4I0gxU6RkwnEJGV0+pSNrG9LfZFyzidKTRr9E
	 E0uPdZIKqFXwxB7JQamc30RwXx8b8xVsmJH7QOOM4PfJdlJ6J0SUZ1bGWUpKIkFmJ/
	 nHkW0lz+vjGDxSFENQZ5cDbuq43Vm41uGFAKhvRdh6fm3qIllE6FHrY5UE3llZ4/uO
	 2LVKg42CfaKPgqeVDyBLi/N7fooZPGT4MPvSPmuBaI+HbGagUtP4rfKUdhDw7HglQH
	 BZ9SMc+tWGI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93067D58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354929358.12985.15572662796167987087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512d46c15b90696098bc6c1cf4c506c874ec6cee81e96ad1cb90a0238cf70d33
Date: Sun, 15 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773549293

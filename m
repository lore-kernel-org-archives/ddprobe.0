Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FB623C4F6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749572994; cv=none; b=o8S7d7D/BKvr/mKpoTdRyjcrvZmRbURm7jeqOGmxAC6b1hRxiNfWypWSrXJjkeaUIP2wxQrxz753NnpL7PBSgxJpoLYAHO5eb4qHZeTu1aFX1MdeMLL99OhFpH0L2TPmKVrQc8b0IAS/LzogpDz4axAu4Bhee4UxKIGAmfQwnfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749572994; c=relaxed/simple;
	bh=6zjQN7TtXm7h2tdFH4OiF3GV3rXVzpniT2SAKJ1wxqc=;
	h=To:Subject:From:Message-Id:Date; b=kYrLH7Hq3vLGLPHtOXj1+LewnJJxrDhZl7p4fOYFgY5Vk1qwO2mc1QgJldBWikqeag/+LzSwV84iBhrQWHFIhSjy4E3HUNIJ264tUI1p/x7CT8dGEeKl3ry0rbyP6rlM9yHf3ZiJAfq+UEpXLL34F2ai20Q1ICQhpDgJwiaaGec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bl8wK/1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bl8wK/1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E69C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749572993;
	bh=6zjQN7TtXm7h2tdFH4OiF3GV3rXVzpniT2SAKJ1wxqc=;
	h=To:Subject:From:Date:From;
	b=Bl8wK/1HrYJFesijfJKAjKPmJVe5PcZrK+CJfR0lhDKhgZL9wF5tVEtgSkmxizJ5j
	 g7OOshMXoi+n7lDh5wUVJ6vgXDJmgWlOhHmfRQjZApOpI2hnXs8wxvq93qvgewa9qW
	 +jgjFqsavAnXJTJlcvAtm5lBeVCsGsmzVumLSXZWtLqKCniPq+7Np2NvdKNYghM170
	 fRNl2VNBXLbbnX8dZtN6/ddfnxIPf7TlPJ0UGdLrw0zn28zKrPdW7VjW5EIUQyQQRj
	 LZWnF1+1olXDa5aguFVoW7cN6Kml3U6PvqqgL3dEhjujTYxr0lOihsnWa+W9buxTyS
	 nIQ5MgmqPs4KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952FFC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957299360.15103.11460579122402431450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8d1ab58e20f20e361cb9864fdb0ac705bec5f51f5652569d8dc4fa0101995a
Date: Tue, 10 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749572993

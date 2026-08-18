Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6272C3CB564
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787048434; cv=none; b=XdSJGTw0yYpeH/3Tdfu9A/V/rWH6kT8A6iCvZEvjxamF6e1SQ+kOHfDPVf6Or+tXvnFcu8Mg2wQnLJ0c0+mktiTaP2zCNqxXS36HtifQol3D6hKcW0iwEESEeSV1QRVIKbnER1uZH7bWl084vU5hdQA1t7ymKhKIhnTsSeP8w7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787048434; c=relaxed/simple;
	bh=SXQhuf/pFpjFxZQ+82WtXn2RfXwtD5LudV6AjUk3DO0=;
	h=To:Subject:From:Message-Id:Date; b=bM+r6yUxuhFjYpsNPCrfuDKgX73aU2P15ao4fCOernMOFDr4EA5iq5lsl04yzH02pLVA/7aRLBGFv3kFB5JiJqGCRrnQcXa5uQ3v68fkofRlo2l/z+I0gWZVkzXo3j9YswmYyqGr2IeQwvPe+WmC8dNnvBhJMGQR2UZe2snL0ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdqXtCNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdqXtCNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBA0C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787048433;
	bh=SXQhuf/pFpjFxZQ+82WtXn2RfXwtD5LudV6AjUk3DO0=;
	h=To:Subject:From:Date:From;
	b=YdqXtCNaSXwp/EAt6agJ0kIy1J6LBjPqTCXfO6d817SiWUurMCikjEhi6eRIgtDGl
	 NGE8GTjI9WmS+6L/nscoJl6wifb9oM3OqoI2OSO55vqvP86jezC8M9kC/kkhsRiBjG
	 +bY6UfdM02BHk3kQcyX2vYQKNb7tKlHj6YfWBnDOdp7B9pFs9srsR3Txtk4N1CArwr
	 dDuscmyP3UvCczNX9wWQLbm0F9AZrcEr7mpWzwWczHc4uzSNxy27v4TZMIbM+2VYIt
	 ZRSpy2vn6VkRT1KnTzE1XzAVt/oYqJl2FWcemgZm0/l53oQsYdDvX0ZVdvsgL0Uwa9
	 xlzIL15i4p+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10B9C5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704843371.24111.4502914303564290208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556137500d27b3f161a272effa3285a0bc824d906762444fbb2fee206369dbe7
Date: Tue, 18 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787048433

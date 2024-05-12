Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C722F52
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715479943; cv=none; b=eGkx0x+ofj9x8IxynjH1ski3m+HjjbEXpKiHkLaJmsSpgklPHpSy+mYVw2zmxiIgrn4QHa6FvjO33NHO9tD/cvH9f3+jGWPesyH/91PVYYQDSyzpJ7L/Y/fxc2hSoL+E+uyYpvEqUtf/lFaVBrQhEgtJzN7K8GY1Eh60xjfkI1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715479943; c=relaxed/simple;
	bh=P7BhOlehEKu+WRm9oTAd4qcp9DkXrgSFAnxTAWSGuQw=;
	h=To:Subject:From:Message-Id:Date; b=ZahuUYbHo6J7Waos328AmFhAqVT4UsLtWrB2zDwPS+usRtlDSnanL+WsWeeA9GbUjqso5W9q2DMUbybYZC0nTpATWn8mYxpkKdN32kCrZCk9wUYD3jYT7AU7hg2Sj4C5E5WdOm8iFKUVwVjggn/zr7CKapxVHsFJIPwRnehQ6iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCHsIOSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCHsIOSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01872C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715479943;
	bh=P7BhOlehEKu+WRm9oTAd4qcp9DkXrgSFAnxTAWSGuQw=;
	h=To:Subject:From:Date:From;
	b=CCHsIOSlAflI8h1futfXB1LIYvgItt6OTe6Ni5X12FN+t5h6f+tetuRxrS2u/pIq7
	 Ik533AJkWGN7rLDj6rigJBxz2U6/n9ElHIaizb0ZEtCkz6gTyefRp8M1gRlPMjLiSq
	 0Ocq3VnT43BJlezDD8q6J7JuhsXVs7iGKw63gTq4wa0FjNZlnI5sMDZbJaS8ZggEOt
	 B4t4xbztDJ+/LEwquPLz5eLfgyeQV2zbHT8xpdJpZ8b7t9bCD4avrlfP0bNE9QbUtx
	 2gFoqnD4EEwsUCYRFKZI/E/0pDCLrzcHwK7k9JGp4h5j9OHPeA1k0ih5nbiuEKR27J
	 9b8r/Lj/oJVgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD2C9C04FFE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547994287.18576.9459157968061355487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20fb582ef9194e8218d5f72e622dd0c869598e7cbcd18d50a29096a69d4d503
Date: Sun, 12 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715479942

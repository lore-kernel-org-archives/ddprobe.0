Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4A43F8EA2
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792342834; cv=none; b=B13l/mU3FveJtk5443nIubkC7oBi0CaujKpUmi/H3gl9Xcm1jpcS+z3pKtfB/DXrOE2eaReCT9oqRD5uh48pkoLY8Rq7F8xvOzkd+NzHaF4u4rLWVGzjXYpugC3WvRCyPbdOy07fmYrpLgEKuh8ZVnSTFRpV1ktre8DWon6VZcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792342834; c=relaxed/simple;
	bh=tMtx/aUMHznMbXbvj39ngHDhupOZRlR/ekSbKh5nMTc=;
	h=To:Subject:From:Message-Id:Date; b=BHX2Dbp71ixEbFkbG0oNYnJ7IF18btXjLOXmeWRxuc3L+dFEiTHPCfSVMoEULgqkE2VZw53L8LHcbo6rTflOrVcR3tYCHqUZEdxOgBx2Xjp6e2BEnyEMXY36lix/CipZN9Q8jHXWk236YM4X2zLonIwO5PLlIqoRMtg9dfeL+vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlJ+Khx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlJ+Khx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDFCC2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792342833;
	bh=tMtx/aUMHznMbXbvj39ngHDhupOZRlR/ekSbKh5nMTc=;
	h=To:Subject:From:Date:From;
	b=MlJ+Khx6DwputBmJ14A6MHNr5D9u54UI/e6DnORJr4o7PIpp0Ghdsw7Gw2ZNkCuZe
	 W8bxK7hrHCiaVE6/+zqvXZqoPdTcaTW0ZEW+8t/a92CHbJsi/bi6sQNa6WVXMURmCj
	 7HFWbV4Gn8bzbKBeYHfWJfylkRsv/DAiAmt0Mgt+zJ9wH8PCigtd3BFi8OWQCl2TVp
	 Es1rtOAeYi6+2FXp6cm71fTD3SKUv/zDvi+AAHN4uVfUjii6EWm0cgMbu8IEG4QlV2
	 J1joGRhEvsdIaGzt1q/IUSA5QQnSt82JDwFMzMNhKwjdWIvibJAfS3lbYbEffivsyD
	 AeLvhN+6SgRzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA908CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234283368.26913.1886883572893573312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106bd539ecee67e3f34f3af76ba955c896eb2b4f9e887a282cdb52282db9392c
Date: Sun, 18 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792342833

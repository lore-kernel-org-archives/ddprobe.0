Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACEF2620DE
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747906795; cv=none; b=sIwLYYTvujgTGsVFvOtSv+v5bhcf/BbKNHq2nMRKhOIWsaks1g6qXLKg4tsnh0IesNLxAU4IS5ZHfnBrhiRp+Y/VuzZfckKcM+1sXjqkOz6coFYfO6FSXqKoTU23hGuFit/a37HIP3GrqlctLdHUY6f9VXfpgqkFji4E77UFKnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747906795; c=relaxed/simple;
	bh=0LO6PRDsDqq5ltSXmV7Bpmm6MUqESif7Lr5uFO6VJAE=;
	h=To:Subject:From:Message-Id:Date; b=QMOGBigiKlWW7tYssibeIT1Y5QOqOcF5MMBypcJXZte+STyHguVqudv5gCOGOsr5NVX8iYtxEYefwZtQeMdhVh//VN5uyVg8CzT+JAi3o4BGdW1+fPw/dwBjjKiL3Gd1W9SVtV4uTo7LmvCm89MNXaBFWIrBiVmqgn3PhXXA9I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnnzKRbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnnzKRbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0E0C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747906793;
	bh=0LO6PRDsDqq5ltSXmV7Bpmm6MUqESif7Lr5uFO6VJAE=;
	h=To:Subject:From:Date:From;
	b=JnnzKRbEskVZVbMKDBg+idPstSEcUR739NGl/bcPPzsR+sQfsS25P1x+SodHxsIW0
	 n5NySMg+3Xw86wUWWoXqBM2pyfqy3+OGMpSbldrnXNqdVHKfIvmRab6hBd7PfGdZJY
	 B5jx8T1K7O/dMge6N9CEa/jbF7LKDoU3mqEQMzv/9fdGYEI5n0k0TA88SLJAA1p4AD
	 4NCaP/5Wn+03TL1MlPwdFp0Q7v+aJPWi0C1isr+PADS35Nj7bYVUfTc0iMAn66vRDu
	 r1KaMpN0YKIGsu0bM2CbNgh7IqDiSkhG5K/hUue3zM1sWi7A6ejqOXvtqnExWrk3fv
	 35bjqVtboWKlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCCC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790679358.30789.17264056449009942786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f27383e7d0bf5ace36630a6b3767ee4ab096a579fa5a24ecd9991282676494
Date: Thu, 22 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747906793

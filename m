Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1526B1EDA0B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754726394; cv=none; b=l+gb/LeYc/FjDxwN3fitjIEUW+O40tqyMcdUGE9mDx8W0uHrpHBp9+Cs8/Xb95UNc1XqznOKKNj66vye/kmOjsoBYKmPRkOef8Sp21dWi/2jjgRN+JS8wEnY2gckvUalizPDrqXQ/qfzZBZX9/8FjxZH9rAcE7u+DDBjJzo0HCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754726394; c=relaxed/simple;
	bh=/MzVCCkRPt73AYVIu4eZV6n3PIQl7xz8d7ixzGSnmXg=;
	h=To:Subject:From:Message-Id:Date; b=HiJmOP1aTA51rMsatEtEFxEFC0KEyE4H+7t+jb//O9QXwBUVSh1zNoafPQp+EL+LrfUR+z/OKXOUyDEvPHoqgK5W0U52+OrPyt6npuZLpEP61SX+zmqvqPHaESs2CaXyF3xPCnsioZuQLK01Kqq1X75+dmrU5QpbDTigPTKrn7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBlb85FD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBlb85FD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF23C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754726393;
	bh=/MzVCCkRPt73AYVIu4eZV6n3PIQl7xz8d7ixzGSnmXg=;
	h=To:Subject:From:Date:From;
	b=aBlb85FD1D4iBleycitYWiLg5CTBPg2rAnjCpLTiOYOgKJHDfbdz8h3VaOFrJ9Hkb
	 7nvA3vtGDp5UnOEbPik0GmHVkGEMscSkMfI4qU1T/xAZKgX/k1CIByLB6tXX0oiDeq
	 a15lhJHSiGlMkjg45bR/xZb1GjjgM4tI6xDhBogR8J3RiVeNTGiSPbNsryEoAzjT3w
	 qbWKQsfLWT9rP3BcZLzwtsrsmfCyv/R8VvfHiOcQudCqqO2PPo1u2eZF8amON79GM7
	 ITckcPGKimTXtHXlKtiQZLRxF47mzBcFi/1NMPMSv6CRMAJR7fgz5NgG5AJfO0xi5p
	 gy7gr6vncb5pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920DAC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472639357.26197.187180802275836739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daee090393115c1f3c21770a28f61713834051fc06957e4da04ddca583a0c589
Date: Sat, 09 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754726393

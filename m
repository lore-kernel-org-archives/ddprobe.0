Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0121DDC33
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760124594; cv=none; b=Tz4V7gD/dTVRkqKhGOc1rRC3njR7FnXzvJFA5pK2TLU3LnKU7N76zRj3bbuKyTlKj38GnEAD4lHw3k4ZDYz4/ZYuGj9a9DV6lcIgwUka6QiM7VJQRvQwW/ql9ciNoKdpt5cIVJoEbv9BYYHZ9ypUbirzG5uIiAkGb8GG1maO/2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760124594; c=relaxed/simple;
	bh=1rAbBNNyVCF+dxSiGs7rDzoDYGP7YJseDANAjqChIpg=;
	h=To:Subject:From:Message-Id:Date; b=DnaupVZYUNghpNLVTvR9bf32X7EX26czifd071+EdTVm6ObLJQx+QTndw8INOYAWWB/8BFCH/77fFSO1pSryYBwhSGW9XCVdANOZlJlypYqr95zV3QRvESuW/Lja9DDNZ5SeR8qHPm9aR6cOHgXhnMDhpYLLZ7HZ/vTiJaUfKDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXdW4AXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXdW4AXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA434C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760124593;
	bh=1rAbBNNyVCF+dxSiGs7rDzoDYGP7YJseDANAjqChIpg=;
	h=To:Subject:From:Date:From;
	b=CXdW4AXgGCjo2lcxUZP49HrzBCvKXWCiUehmc9SRXzGla9UN8wW+/Dmf6H5TNjSda
	 hnEF0umoQZgZuwaE3mXFfPf4cbiunl4ltMS7FVN1mhqoB19hmwOLUgtevCEvqgIo02
	 XBuTANysS4nw1Ou2OSd9BLLzjEJFV08kN8QsjhGhwJhoAYs1WR2eJ30jaRvH9+ypO2
	 51gNg+FB237Qy8gWs7HQByfgdBEjw56AE5grLiKuQUV1/tTRzBwywfKs35DoeKGvz/
	 2NLjN1Mkk7ikPhhVLDEzmHK0I6J2TcNLrgTKnm6JjJsEvnk+ptjt6al+ZdmXQIkPpC
	 AD9HXG5IzxpMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97921CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012459358.22519.14499783392271099228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63f5b613782f38417ab884ed4c907be30135d4dd4a3ff15d53349146398b5ce
Date: Fri, 10 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760124593

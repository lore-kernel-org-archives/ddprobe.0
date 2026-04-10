Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212C34C81
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775791054; cv=none; b=ZF5WhXpZyhKzsg5h1Ww3pOaDvOMXFlnA93gndHTbWzE05Qks+x+wtwYFW7GLakLINhuF+cmmxPs75izBGU8jDJ3scfqY3K29RT5HCO94K/Bg+bfFS0QkFThQhxjYe2a4+nr1o+eZ+lZjaFXPCI5i3Hh+ZpFWjxLgHp9fM9ngBJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775791054; c=relaxed/simple;
	bh=fUJ1ryolaaZAQW5mRBfSd/qGEkRb0UWqgUgJC0H4YcM=;
	h=To:Subject:From:Message-Id:Date; b=Yy1F12D50INXICJxZ3EstCGlx6zOxniF9HM12k/7YihSWJ5YJQF8UrM+Z5uOljUQ6+5tHeedQPca3QfWFX4U3fIf8TtgJ+6Tpm0nmCQ8IawjQXJiYWRe9ne95Ylzm2vM85dGNHot3rTrTKkDNveHwLUe/FPdOZPH6d0rs6NwSoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2BIc5QN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2BIc5QN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5E8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775791053;
	bh=fUJ1ryolaaZAQW5mRBfSd/qGEkRb0UWqgUgJC0H4YcM=;
	h=To:Subject:From:Date:From;
	b=H2BIc5QNMU24NUryuDYLAXf7B6TKa7PD+NVvkAuVFgkog33AOJ88iW9JJIuJo34VP
	 p7LB2atmihq5kO9NH3KWz3EfV+s9B+54ABFUnHHDCKA2oJjvJ3SFzf+DANUx4hn5y+
	 t/nv29aTxYxZOoq8+kOcuoIAbScakw/C5tkswQCV8qYA1aYUOqTJX+c5EbWbHvJYcx
	 +SrkCNFoAS5r9J1yR8Whq/TIfPwrAcdi8wzD0kjfJchlOabjxB4J81vd0b8RO9yM0x
	 FgZksedt0BecyVK+Y92LQWAAJlcCKsNp4j0ShlHm1VpnuDzMRxERpYIcVyWaSeej2D
	 9FHJMXFjeHvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D3DF36BA6
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579105368.27135.10183901830910380430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbdf4b1b6f5b5482ac48dfd0c80ee6a8775e31f6ded868bc222312ba1706d0a
Date: Fri, 10 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775791053

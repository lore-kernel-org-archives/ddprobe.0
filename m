Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44815A11F
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710421697; cv=none; b=TML4jvv8mTBGzHWeWzdeMNQH6qM9UNGdKiAKj57vEO8t3U8VUC/7x2zfLt2ehY/uvKw9FoJM+qiD0VcWBha66AjTFRdTD/yJuOByyrEXScE/25QmtNwpXQNPI6fZZfJPrTJBA33AeQgHCmK0y3pkpx3soUfBRGw62CWQgTqdaqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710421697; c=relaxed/simple;
	bh=MvUkJWPBjpdJxGm7YrcDtMDw8Vd1NDYgYjwz9sd2Er8=;
	h=To:Subject:From:Message-Id:Date; b=WSWf7sjZT73Rf4X4TnXhB3iujd0lRuTYVlJC1ljMttqhwIDR04Lw6itFQmhcGZG6ajhAPgTVSTz5UhqwTo35MmWnSpLjSu37a+PSZtVRic6t2Fuzj2daHcVN5sLBRcOaf0cE3BJxLzIZId9DzgnwQ6Kzby5LtgfQRw8LgUrbZL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw3Gb8SZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw3Gb8SZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 746E8C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710421696;
	bh=MvUkJWPBjpdJxGm7YrcDtMDw8Vd1NDYgYjwz9sd2Er8=;
	h=To:Subject:From:Date:From;
	b=Jw3Gb8SZT9/7jvp8qCInlqnZtYfuxql1evXKtYCZA9pNdi2/dXQ5cVpXEW4qDk0Pt
	 kKkZtLpXdmHOHm5eXOBJD8w0kCYFtInp0G9rp5x+CjivMh/68ug5ArdXhS/7ZgAb8q
	 kSpXseRqSSIJSVwIxK7I8jf/H7l8Oyplm6uCLic2XahuMvuneHn++8x8g2cR0no0hF
	 WNBw/N8p5rIqcFtWThRNNr5cDbaFuFgT+BBthPDyZ8dHVC2ufW/Z8rG8bnlyvpnos7
	 Edx75ZdBg4I8lIDtaHg05qqrrc2w6cbaMAYoLfpNOVRrfSmkI57zYw2dehvsMg0i3K
	 TQnABEd94ZKwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B25C54E67
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171042169639.27779.10800408792951055714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa077835ce70f40ec5e88481685505da4b2eb9fa5f94a62f2f9a699b51ad1490
Date: Thu, 14 Mar 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710421696

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41255146A71
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737663354; cv=none; b=Xbsh/uArU5Ud4qI6pYr+WJyRS8XpdbUc3/Jte941MsWPmNN7EYNtlNH6cVT2MhKChqL7YXOTTKLpRh5AUno9i8bejwgwbR7rtFTjTnfcernkVXrQmJLKV5Gaxwhl++/YjIE9qTlZIgFo8hn0dF6RZpRVicsIKWryxZLsLAC2HVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737663354; c=relaxed/simple;
	bh=DVWzjLULxn+JA7b7+nyDZ/Z7cU3Lvv2xwjt/QTsdyGg=;
	h=To:Subject:From:Message-Id:Date; b=fY5KMzg7IJVaGDNLYL7fEhh0C6FralVLzK4piGNtcc0Ya+8hopUdXhT9KXNvPCYA1pSVSGlfsaV0UKMjAtdmY29aj1OHjKp2KIZDouywsi5hgPW+8dmh/GPjxIoqokfgvF9lOXTX2tJXT21DeiVVWM7iG0RKlM4tT0dT6Ss5hAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ec1ineiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ec1ineiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A94C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737663353;
	bh=DVWzjLULxn+JA7b7+nyDZ/Z7cU3Lvv2xwjt/QTsdyGg=;
	h=To:Subject:From:Date:From;
	b=Ec1ineiMnFAaXr8hR/WR4tc9aGJdkdNY5v+CCUCjVkCf/oCl3elym2akR56Jp9NhK
	 1gqm4/QmTANqnZgTWtHHBl5nUc5NThxr+ghhXCyXIgapCXvxMhAuXFgHFLHu6TpGDa
	 4TguV+N9GBnoOMatWZaj41MouLeN7xzzr14VMO8xo/G2bPGG7ty8YrH5GiN3TxsQan
	 UTKQ2BqSlXoXeweZLOkS6q5e4UBrBpYG644xVG69+Qy2558GK3gQG23qy63HcWcmcn
	 rtvEqaYpR0JS4ZYkTbmwQ03/6oSe3Z0no7TOyFd28IL18Atd/x3Rt1LZXIL+5xbXCC
	 IPsebUEKCDfGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F7C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766335358.19696.15778646460240614436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4d20e61ce0e2338e0d69e1eb83c061375eee39a5b0baab99543716a03786e2
Date: Thu, 23 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737663353

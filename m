Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2195135A5C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709038697; cv=none; b=fJJm0E+uCMOdoi0Yt1hwuCHKtRLeJur/aNNGxrYvhgWTcrmV6TlmkL9m4HaW4B3TyaZeTYDCpvkrrwaiaIwqy402AWREhX709VE3jtrLLnHYEBPnJLHBsSihf+hhwYkGRkE98fyoBGikObAeguwB8HDa/85XNku05+G7bI3dxqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709038697; c=relaxed/simple;
	bh=D4eNSrpxesZg5nhcFwxVOl6CenC8Uzs39yuW1xURUu4=;
	h=To:Subject:From:Message-Id:Date; b=WJtfJIaEPwlbt4u0LKGhacYQIqQdy5DZwpLI/fyPX2hfLWJF0wKQverbDk9/pmubcmhqqcBymQns9f2ZetODVsTo2KGVmX15HR+pCDCWO3QbnmcIOmEeg1Kexjq2mD/RuVwhbRLoGUZwRnDw/tiSJ9NgRpg8wz7T4bcxwpzEP7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8G7+Uqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8G7+Uqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BFCC433C7
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709038696;
	bh=D4eNSrpxesZg5nhcFwxVOl6CenC8Uzs39yuW1xURUu4=;
	h=To:Subject:From:Date:From;
	b=Q8G7+UqcXbVkqhplAGam99NxuDj5ynhLX8k56VlcGWaLuCSipFDvrdST+smQvWcRU
	 +mCo63wtBNYFYY+uQ/jMOyuEfXVdIPbAGW0YYQPBw/CVVuVBeOkstLVuKvSAwEx/49
	 rOOMF2JuMcdm38XG+khLre0DJhPNRmvYRRK44u0zjK/VRpNOAzIZZGtLUEPOcdkdBN
	 9NhmO7gLF/R4ZI+Ig+oZFGUnX1ys3wOrSjX2PnoeoQQNbFuzrCYnxS/QUCEIWdlA4W
	 ApFqxw66DJr1z1fZcSa4FpziSqNKSsYkEoWFCThDhufVIPlYpQY4lo4vCiGzeo/O5P
	 a/NqthpzZWjiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D355C5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170903869637.6278.17174123307419867022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e8cd31be4e568849787e70122b8bc08ea0fd607d3588781f4148cc400f2f17
Date: Tue, 27 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709038696

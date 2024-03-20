Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135BB11182
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710905897; cv=none; b=jY8ZZYS0vVEQCvKMNMZj82JTyBcEoL0DuEFzQWylUwef6H7GrLotLZ5CvfJzI1pHf3GuLG42Rf0/MTQ8Uaw3oW7l3p3ETOItcsGvfrrRNSTha5n4SDlIhiYBpESXmpobl3iZvOFx1fGXdFxITAh4BIJ1CxDuWF+Ln/2E1bhh/uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710905897; c=relaxed/simple;
	bh=YMcpQ5yhr7ZZvIQavRUBQulJC3yxhvwmnttjjpfNsMY=;
	h=To:Subject:From:Message-Id:Date; b=YqqjDCUUWxEJy0r6gBZ/V3tW2N3reAVOIAIQqanFzYz0YzphwwhP+sBhz2HiUKLic0uKHsDNgd/EhcaJSRq1Fqhqp8yjYOeY6dKNmKOy3DNs2G5sTc2H/zra3yzi4B7okuWUPGB0CClYmOZmK2H39iGT5XCQZJhk2bbUACqjq4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfmI/5ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfmI/5ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D891C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710905896;
	bh=YMcpQ5yhr7ZZvIQavRUBQulJC3yxhvwmnttjjpfNsMY=;
	h=To:Subject:From:Date:From;
	b=CfmI/5akcDic13wNiJUZoVBQfOn6WGPzhRsUMEWj49fAa8GYQzwpvPYvWx+dwkmoG
	 kM4Zdaa9LAlPLN2tCDdDggs9B5QnLyn67fw3GsBUSSPO2BWXwZZoDmWPxElONAzY+Y
	 hzl6IOvYXc+hqQKw6JQiVgiTjlCml/Bsdm9Xa9dhnb4uW4K/GK5YUaRxH8UpTX5vKh
	 SScG62UlwjoeIXiWGDPnA1v6xjBIINgAJ6VL++9b7M5VJplJCmr7nESoUthqr8Gd2K
	 14AmxVavpcTvWWII9A67xodGHO64yIkl6MMshvSMhM1AHqoKlVXoBevG/VtGSwUbkX
	 8HEY2HT+Z1vyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AEDC54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171090589642.30777.3305379873200743702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d29a561953c9065f30778fca0d81c44d907331226694450b797d8a3f967147
Date: Wed, 20 Mar 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710905896

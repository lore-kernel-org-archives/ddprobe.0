Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE8415CD74
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764895974; cv=none; b=mrPwWEeClPaMAklXKSkkMq1It5NGuGsGkyA4N31Wqi7NO6K5W8PAkU9nU9hDp7H/Fu8a7PhOmNwMx2JTleM2phsijPUMsxcTdsI8J7hgsbvWcKAmsjkQxcFYYmlNADwrK6PYHbCCZgreha+1EIxJ+w1PSzHq9y7sOGFMaJgSf58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764895974; c=relaxed/simple;
	bh=FVgGMY+FlVfyLxhYEby/AoBiXPjavk0PmLDiD2Oa0/A=;
	h=To:Subject:From:Message-Id:Date; b=gYRmCAby7PFFPW1YIn4gLTEXy55jXXdcwv7r1EBJncTyvjxeqAjxOh6nR5yM3DvEO9KqkT9xEHp9fSX21Q5uHN9xrZGFF5b9inLmCs/tiOodRw11bgi0LfSAgYGKsW3vQjZmGT3JGgU4JS0ksTT+cSv0xiDEXCUwOW9vOYQUOMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHex/2aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHex/2aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF7C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764895973;
	bh=FVgGMY+FlVfyLxhYEby/AoBiXPjavk0PmLDiD2Oa0/A=;
	h=To:Subject:From:Date:From;
	b=UHex/2aLEXp5rGqqD2rdBemB8wrw7Sg1pW6m1Gp6iRnsegtAdnpgV/puFDjAf/VeR
	 sUMAqFQU0DSDFwhGIS8Phz/7N8NM43V8r8B7yynFQFVHFSDrUSmeaaSqarjtMBk9Ic
	 gp3uh33t0o73S0YS4iK7HDCWMXVS5M3P+vtPXiYqfIazpc5nCFqcr2W0awfc34rKd3
	 R1XqZZa96ejf1ZmeHBUy4ySQpHe+2zeMjVI5ewE+WjdkoGB5KDK8UA5/HY82O5J2bM
	 sZkP66Msu8lVIhIBJ9LIizknO3fWjKWW4Pw7MA1lhPrYaqiwcF5r6ZAyS1H+jGTdOD
	 hfMTFYZjLTm8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91618D2CDF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489597358.23918.17870089820911949506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20782159aacaf971b36102ff7331bfbc9681a892d55dd5740a17a62300c482a
Date: Fri, 05 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764895973

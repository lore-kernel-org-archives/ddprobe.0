Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B00321CC47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749323994; cv=none; b=cE6HHdYAn7pUGYPuZmCcRCgFQ9zGGWHJ78KynJ2nBOd5lk+NvdpYApZZNWIz65E9GukbFsWoVhT4GH6ZCnwkveTvgI3wcd6XERV7oLfmRmok/Voe2KjVtEbOhonrRvsVqR+97wHQcXQtgF50p4HuIdQ5n8ro1IXnoHzG9XhcaRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749323994; c=relaxed/simple;
	bh=IyshgbmkQWIhklt2Ym3Enhg7HUz2QEf6ZZ89Hw+M7No=;
	h=To:Subject:From:Message-Id:Date; b=uc4govA9fmdcYsOGNN6vRNMdHNHuqTyJNY58GyCYjkNoTq1ColXZ2wliGjBCjUGTub1WLXcGSORFmQwTs7HLg8sV6dt9iIwQCmvnn0ZZ3MxI/5KoRqJVSwNzbaQi76d6NYsz5KeYcmuVFrgs87F+PCoPpZsxgavHXrqQDsbCz/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgrSswVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgrSswVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98794C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749323993;
	bh=IyshgbmkQWIhklt2Ym3Enhg7HUz2QEf6ZZ89Hw+M7No=;
	h=To:Subject:From:Date:From;
	b=UgrSswVDp4JdrMGl6GID5aC/C/SsnUP9NRgfz5vt2cV3X6AMnzzbM7wOG9WnTseBx
	 v0x+cmcoSZW8GOis/KtXNlUNOLBoFA1WuYPA22nCs2TrQlVTD1i0IGwxbWdkRxegEM
	 c0v/U/GBScJUZA93tvffn4BKxWKAGhOwJlN1gScRXqUCV9sgRCHWE8j/i7p51pHKIN
	 b5ip6UdaCeDFaU4fbhi9grMGDK1CdUEHhRee1W3jVJ0Eqr0HBtXo4uFfwKjJh9ms+Y
	 cOSOSyV2qTWzC0u4DezJo3DfCY3vRplS5AYsOrPh5wPX1iQjC8mbbcj02gjpy2IeHf
	 Fa4fpizfVak7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA61C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932399357.11519.2509331351995744327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35435c1b82430c3f99bb5e135190957e94b4c47bc315218e582df94a778bdcff
Date: Sat, 07 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749323993

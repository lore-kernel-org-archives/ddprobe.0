Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246DB63B9
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722905754; cv=none; b=dvIiClaXgeYxRUUS+W2MlywKIr3nuKZoTWjsLmBieusvmd8kXV2zLarTQhx9LM80dU8gqjvc+nwE8TWqO6KrJx1gZdNiSDU7PL0ftDU1+5lK5W73PaqAAvOOtpIIYCQwxlNa4p49HlmIq5AqZ0lg3cZrph50bWK6TLhhRvI93V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722905754; c=relaxed/simple;
	bh=JTowWlij+p9pSjeThYr85ZrlsRmJT9IawUSWA5Bpbg0=;
	h=To:Subject:From:Message-Id:Date; b=TRZUqjYhc62KRcLWlPmjOD+Fjcu+QyvJ7OW7D6NLZ4UTlL8W5BpIZzBAey8vwTwsiTbk/1//mOOuzPXclM9502H3Et335K9NshmyWOIyiWne+jEr1oymhcZYISPjltQop32jQKxyZ2wao+Mw27UEaxmgixtHvNHRuHZxFzBkhRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdjOxQVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdjOxQVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A825DC32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722905753;
	bh=JTowWlij+p9pSjeThYr85ZrlsRmJT9IawUSWA5Bpbg0=;
	h=To:Subject:From:Date:From;
	b=CdjOxQVu5cO9L/Viyp8wA6p6SbWEgg4iYDTPKon/EcuRHBNIxUPXFvIc/IVewv3zt
	 FIl4ehbT/dxnT0CcLTHUT1aDLTRvYSRrM8HUkSBc/3tCzndifc7uEVFYJqzOgTxKGb
	 x1tnVf1Yam99/MLTyla5VT+IMosenTfKkTrbmw2Oh1HJN0hYFYHTJ3SwRCOWM0kNsA
	 Iw1OD+bqu/KFCsxmz/7pAAotHkMw85gcPyBSYZl1+M5gGJlI4dAT+Ssr6ZOkEXlNYp
	 uunDeN22tBp9GdLGdv6ucj9arWQj9HwQoxXrF7+OcbyWlykHZ2wsC/CL1a8lNzD1GT
	 9X8WpkZvDmeKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BCC3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172290575358.9562.16592518974563958656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a88ca26a85380a3b241c3ea80c1924a2527ee1747954a2379e58dbd0d81cb5f
Date: Tue, 06 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722905753

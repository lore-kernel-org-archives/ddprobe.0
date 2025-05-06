Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361E62253B0
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746517794; cv=none; b=EgU3IixKCed6ottwRRkSziuobHagZn2WLPxS5zfQAymYQoZNaW2fZ2is/tjCs68EHku+pESftHFb/Tg4BpMnCFir+234oFnVhut+ke0BD0dT5mYc3sW0bEMsDAfV8QAxNV4CglWlujTuRINh0fR0o4d4KJWYi70uvCM4G5eJ4z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746517794; c=relaxed/simple;
	bh=y6E7xOqUlmFREg6QChYGOEok8zrpilC/ZQNG1xBtFvA=;
	h=To:Subject:From:Message-Id:Date; b=fs2nyhJ6oqwh8bQ+gRLL7HdzCTif7MC/fwdrY9HPBmD1oHJn4F7vRBH5+4tMSLLPkjaKAliwIyNOAxrVsHKe2drEACpwQv2XkS2fFFDrsxk0/LCNqOJsYL5+6vWZLAqUfYckfKjs186po7xynaNmeZlELyiJ5FgcTSYxRRaN/rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lp5PPBAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lp5PPBAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C527C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746517793;
	bh=y6E7xOqUlmFREg6QChYGOEok8zrpilC/ZQNG1xBtFvA=;
	h=To:Subject:From:Date:From;
	b=Lp5PPBAWkHr7uCJ0L09XfT0f3+TV4jhpk0ndRdJhMRnIK9dfgjnLkOvTA45/6ZLdM
	 HGLZH7fI+iqMVlg0GWUL5dXx3crcoY8jLSea/Lp7mgEJAuwDvynRS1e/0CxNB6WDr6
	 JS4VdVdFNXzZYJJe1/XBTKQiQXH7A1ujppqXMPfgZfv9mjKYduVLIATG2HLXF2flvr
	 BisB/ga7bC2FWfv+H/fZMrnRxUq8qpGk0XCoAZ+byVmaaNZ6LQbqUqVtoyBcpdCER+
	 G45XvkMNa3VjF8vRYpK/9hX2Ad5wdoNtxEPXc8oWGeMpBu2zAr6uO2w8pHep9Buq1W
	 WH3T8zpaStCZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE49C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651779357.6076.13718734419365979776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61336ba99cc8f461046c6ff949018d83f044dcd8c75891288dcce41d73db91d0
Date: Tue, 06 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746517793

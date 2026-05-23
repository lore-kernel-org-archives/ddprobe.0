Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E41130276A
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779572554; cv=none; b=UIyWUPDFlge0/FHDb/bogTbWF3IQ+/brKBWQ/t3y7BLA3+q4WCuP1Qz9WdRX4k4+4cGEmWFZKZ5fayLL8o0Ls67E4czqXz4cUgi77+F8gEA8gqBTlDs3QlDBp2Yz/wFVrY1+VHNmLzCTkXtVluoqJ7IlWdKb61s0hkQtKAFxUeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779572554; c=relaxed/simple;
	bh=VGoE9Msfh2dge/KQI+HbFh/QtZCwBpydNUB/dzDlD6s=;
	h=To:Subject:From:Message-Id:Date; b=kPqwzy0oJd/H9ruQjB2KSJKwimu2EHJjVRt6MZjGAtGctnodhVfmdkgVVYO4o7rS8BQGsbNVo8Qy9gr2rgZuQFSlFIYb9G0qpX3EGdebQERTrRKJ2kihcyYI06tI0NFWHATx3Kyh0vPi6o5rTDpNCqU5LZAk2X/vC75z9Mw6Qb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjfmLD8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjfmLD8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7EDC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779572553;
	bh=VGoE9Msfh2dge/KQI+HbFh/QtZCwBpydNUB/dzDlD6s=;
	h=To:Subject:From:Date:From;
	b=bjfmLD8/XjZ/UXyI9goOl1DB+ynO8WvD1yMKbxf8ex0Pk8tX0TBf8VTvp4CjXvBYi
	 9M3xpDlOlmt6yvaesYyWOuNaW7zLfP9c7FJKOJMfw0eRZhMTWt8v5xcNzDz8IPjYHX
	 PLZ67KPvgcegYvibyKWsBP0ExhdY3rNwfgD+GxMc7WaneTNFeJd6UZZP1dDtPILZFE
	 8qZZao8N1CnagIY7x0shNTP6h/ijJh8igbaVcy8Z/23RMRzLT+9KNoHgVBfymZ5e0o
	 xC2KSO3+ZvuzgybXhd4+7j5KRlXlzUgiIaGZ8IR/JmTp9JuZp2m9NzmO831KzB1Mx4
	 eEn91Cp07q3nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87D3CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957255368.3126.7709755673066414503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d69501d73018120e527057319bcb70bea43cefff213a6ede18e1e3cd568a6f8
Date: Sat, 23 May 2026 21:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779572553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD0C560AA0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788960034; cv=none; b=a7uFNNwawMpssL3g8hTF5rIg/jYyw0Hb/uZdHyXOZTdK5mp2SP+9NPuqPAso6NNUjEqKUVYpXtXd6f1ZhgnY6dnfhbdmCZBrZUpVVNTsOH+DzRnOIHVcXs47hy+k6rUYxF9nalzFob3zRwPItjqfTuDOEhi/IrBgtqaMtkt59G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788960034; c=relaxed/simple;
	bh=gZFx2Fbwd4PDOTE37J3AM5g7aJ5WhffxqFnt97E8XZs=;
	h=To:Subject:From:Message-Id:Date; b=mIID5yoO9GWTpJSxpO1f6TMpbPS7cT5qRQ1JH9K730zuzcIl/S6+b4CjPrHyLICUhN+ODVW8nWZoqepqt+6q0bX45NxOJwO1gHhxB+Cj75Ubw6vamTPv8WIU2oJibZsvdm0vXJuT9ojSOkzZlx1qufJjhB4eQ7Bu32EAuMcjhhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxJG1r/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxJG1r/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD82C2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788960033;
	bh=gZFx2Fbwd4PDOTE37J3AM5g7aJ5WhffxqFnt97E8XZs=;
	h=To:Subject:From:Date:From;
	b=ZxJG1r/uJUitiOml7d+5ttfMyYP4J2MjAVowJhRbp42qdsUz+qMiHKiF4xdgvBkJL
	 HCuYSmJB5Wcmfb7RvJ4JHu1O6K+texeaSDJGNc4IadpNcrI2HORjJvoZgteZKpWxbG
	 h0Dj0Q5hN2uJJ0AaKXH1w0hl4oldgxprp8eM6B+LXt7cWBvjlZ3F16Lp+3qSvdZGRO
	 j719/HJ3xhMDiecPP1hTIY50SrTEPcs4qM8AKU2arCWCjZ4kvu7PAztOeVRxRZVg5T
	 xwQBVf9AEDseBtkJoqJ+XpDlZo3TdzKXbHMFDGFU9gVzULyalQQU7OkPRB51cCArrY
	 CpQIjOW/FvO9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44D9C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896003372.29644.15529066039633882407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d032f98febff17a7ae856ed331a1ba812351763a832e8092123da559a55cc4b
Date: Wed, 09 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788960033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5000D3E0C73
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784764774; cv=none; b=hcjnfVFuU4a80WvSudk5/Zp29N3hJT+jq5EQeUXqUUrIRZgFbqLVSBTs/fsMS8KpO8zc3cp0FKpFzjshGrftBlzTVcbr4p3cntIL7JgZL01DoMbVIPGiNwravZUhazwibdCgUaOLmHrLIVO4dGEKwF9uCggbxRPYjSxSqL+1Zdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784764774; c=relaxed/simple;
	bh=hDKlVNrA6/92dn8bwPIQu9AKUH/LeI0XqB+QY5cEWYw=;
	h=To:Subject:From:Message-Id:Date; b=pkJ24NTV4ohn+qWUxEkO2b4pTfhweKUsxTiVroJVqV34rllxecvprldHJDVmPoBWeHYfZrtA18Hfl9YnM+tbrQNTXpLJ+zGlVeNechIBSLHxKdWR286ukrZx+BWNVVHrHG2d5vQl7Zasv9G/BSrHr+06ZxevdYm8JI1TZ+vjKz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9NkjpkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9NkjpkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B2CC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784764773;
	bh=hDKlVNrA6/92dn8bwPIQu9AKUH/LeI0XqB+QY5cEWYw=;
	h=To:Subject:From:Date:From;
	b=c9NkjpkKLJ/O1KRTE4V5uvbh8R+ZaXnIXlMwBwcBUIIFhPypI4nkY5qIiOvlHe1pH
	 7WayIIB0uMMAqLVpq7P9FJFsxSV2G6A+6vzkRffm0po7KaBTofGUZXUlYUZ9dk2Nzu
	 uLCVZ3ug/W6l1OLWN1eUnDLw6367KaQAucvkVgFbsethJbn0j+76p4SAr+WEEOm+Ys
	 JAXMSPIM/hZMuaNdYtiLkNznJ5xBRLHOQR3YPbm9JwzoYgWGBLfmhmL/QOkIqvsVLn
	 AliYwEpNYIAXkMYhr3eca8+7JgsWTH6gIo+nxKTRvGeBQ+mp+HJjtOirPzi845NCXS
	 9R2tEKngfhXdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE1C44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476477369.23845.1076141431174000142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef4ef15a5245c10c194767599d6fedd8304bfdab477a4f1e16e6b39f954df47
Date: Wed, 22 Jul 2026 23:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784764773

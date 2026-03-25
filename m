Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A373BA239
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774434894; cv=none; b=FwPhCpl2r7tOzMf2zcVFfkjgPaNi3nabxkp3tPYzqAxoW+VJD76iFeD1i6IqRc4xwAjJaHr7TDJbtgy/JoJS/CWDBg3EIZnPyjSULDg8DD89eBu2k13DYcHy67LYoMbZVQzaLR5NAZNhOmZFpEEKsoQVQkxjEFhEVYSpY5gWOcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774434894; c=relaxed/simple;
	bh=qt9WOqSIsY4YWT4RDPXVVCmkqK0UmmbQxNrKFSvQ8pY=;
	h=To:Subject:From:Message-Id:Date; b=khc8a6WlcPMj37iMx/YUrK8N1FWrb2pctCrhxFWa8iQpA9GH2aTtZy9P37fzUmj2V+TE7j2tZlZEHD/Bdjj3evX16/tjExYpUbognA7xKbH7N1kKZ720DHa+rIgmSBnCXwf9HlhxA9WmRTugy9VERbf5fypoKg85MvEyHVB3NW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObRhOl2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObRhOl2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D5DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774434893;
	bh=qt9WOqSIsY4YWT4RDPXVVCmkqK0UmmbQxNrKFSvQ8pY=;
	h=To:Subject:From:Date:From;
	b=ObRhOl2U1O7QJtAoV5cFwCTRl9sh/R4CqmRV4ilmRmZ4yp26/66yewjiU5wdzeA35
	 2YVDgs/aIsWgrIWGoMFB97UjaMbkgwz5iH7RM1XVrzh05d3KN8ha0Hzj2dCPq2oYUp
	 f/8mRgjSV3ES9lJ/3vtXoRL1MsFa/n/VdkyoZ+52vEcA8WWLwhVA6nTKSvolZW5jLW
	 +8Ek6q0SnrPTySExAhveqaLY96PsXGwU/uB5Ve+JXZYUtqxVT6ODfk7KfVwDIKnMbG
	 qqZ70KtD7HhhnAUGuXntdAM6QG0LQ5Y2QHcZbJwJETrm7JAG441FXf45/vsoH/j6FG
	 scEMMf6d3vR5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9F2FEA808
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443489363.21346.2972740101662936618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799a00a682e95bbd4354d938e6f500769012e1752bd55b66acae594dc97b69af
Date: Wed, 25 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774434893

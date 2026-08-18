Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5031C37B023
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787037634; cv=none; b=kSu97uGFytEdl/t5F/ENh+MLyVLC2G8imnV0YHGh5BLfnueEEKl+EqFuwLlX/UZmRZAoUNeRrlIOxF90cXlQs9+G+LbOZ2/d1W0UsJO9TNptea2v1gtLER8X/PLtH5LY9E+RPYDEDZLabicVBIn90aSrej8HsZbI9rBIyFGqkvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787037634; c=relaxed/simple;
	bh=7Gkpzn1GwG1tF+l/5eXJcRSY6jSSQ/foWh2GIHv2Ypk=;
	h=To:Subject:From:Message-Id:Date; b=VPJ9JlPKJmGxVVyPW/gNtgnPlWUAnb9e08Ltj2TRzZqkMCTBh2rcczo7o0sTAqjCgT0ZhlB4nJ/DqSi1uGcsz1FOD7McKB5iiPaihYU2zikGk2sQuegAuKOHPC99VQuVB1WlLiqeK7pZme8fD+1JfBfiDOlqLtjlAZ387K1BrGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPiik9Jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPiik9Jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF8EC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787037633;
	bh=7Gkpzn1GwG1tF+l/5eXJcRSY6jSSQ/foWh2GIHv2Ypk=;
	h=To:Subject:From:Date:From;
	b=tPiik9Jjpk9CKJYOdSjSSHZBIdb7vsP0khAH6nqZVguKYnhzFYvHHJbVS+yNEwmBL
	 uo3h3Dyqakf9YHeo1dioYesF6pYCzoYM+EsFte5EedNaGKDwgRGsxNqhaLy09OLFsR
	 E7zJRHMELSsp1CrCFDapzWnvVvj+Vehf+0aoTF3M9cD1x6dRVPConAfgjEV6xA4yrc
	 XcTSWuIDj3JgLkR4ZdePqLa8YRfJFXliNXzGe0sotigmCSPyxXLufc4tUTsBX3HTFW
	 HpSUbdZ87AYORXNrWkA5uLHY2A7RIQGmaglhkJtBys0Ev+Ot580GwGQlJm3tPxtrui
	 BkSoi5xbWHL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB744C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703763369.8116.9026698126499644664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cb8b206efa66b52cf13b1324e8668564cc728ea1466214caf8d68840cc4e76
Date: Tue, 18 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787037633

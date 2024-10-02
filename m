Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F38D2F43
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727844354; cv=none; b=kr2onnp/8T/FnF+9qdLxxq0R+bPu58JkbzYqGVvVi+elP9m3nEXrVTtdAJpcjJ42tl8DZ6xaMDSXvzQEQmhQ/tWRvXmyCFcmZjoij3ibBWvdcDC2JHtPa8+XGK9l09ss7XlywxTEd9kkRDEswSnuDiWmIrt8thqPpx1NCuK1Z8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727844354; c=relaxed/simple;
	bh=BeM1yR7jxPMNmY8t4rkOeYV4d8QdCQOPGGaLEwDfiMQ=;
	h=To:Subject:From:Message-Id:Date; b=Rxxu+A5ZnlAH+Gjn5u7/XXDo5eELJSUkoVxdkKqmbUnrZlI+9nD1wL11HXhZKC/DEyyceoVFgXSFynmEpbUamrkn0e5E0kwU4Hza5QJggsrCDH2xf4fgWCEVKkXYast4pGe+xOog5UW5bd7b43xnsI8nW5ZLVTY1YPB7pv2W2aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqw7+OQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqw7+OQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77BAC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727844353;
	bh=BeM1yR7jxPMNmY8t4rkOeYV4d8QdCQOPGGaLEwDfiMQ=;
	h=To:Subject:From:Date:From;
	b=Uqw7+OQbsERj+6mmEXEybYpxOGPEBC3Xp2jqhxm3RyTki257x3C3ZS3AzMPDpdUu3
	 WzkWTpdqWE7+KSsiH3g+RuCJ2nqRaoyLpNUb/Di3pOtXhpoDw83eutM3SW3p0JoTQ4
	 QThgF5p3/ISSQ1esgNM+0q1MJRinqPnwJFpDZBkXDhWcDpbYzHtJ52iMb196H3pM0N
	 cnJ3RD1cFi5qWgM2/56MyO7jZ7k0prlAe0VZ++0PsjShx/SRVaaXhRp+uBXGfCdg3t
	 rsfEJRycOwcPFzj02ozjw/+apCayq9/QPcX8HLoO48/nz5D1EaPI64H1c5aHE1ZkHP
	 8dN6a1uZXMXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECCCF3194
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784435359.29809.3997526985653796680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01319ade95cbd44f76c3a7ddeb6f171c84d23c3664bd910469e872152714f2c9
Date: Wed, 02 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727844353

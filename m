Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECA6381C4
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768458234; cv=none; b=cd5dHYgsTeKcE3Ei82cXO/SfxX07IrNPa9EYV6Hof3UNO977fIZhJZ78+ynwKnVqoBup3nZqWpxJZO/2C+Ccwk9rOU28AU/Ig9lQ3XsIdQbXc+8rEWS25uazipWDR6cUrN6GLayNE2I8J+3SVgvcxutTA0koFKNpoiC2sC7dErI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768458234; c=relaxed/simple;
	bh=sEfXncm7NoPtCOhLtLTnQIUjg4//XtU3Q0ZlYF8NcTI=;
	h=To:Subject:From:Message-Id:Date; b=evc/d8kw2iIxEYb5SvDpR9P9P4SvDz6H5ZTZEfWyYY8caElA5UfE+2BKYHSwr59L7ZBL7rD8vmU1YEno9LYgm0GjPNKKPB0VTCGTtW2qZ/g25seLEnj92SkjmeUE3rb+gS15P72mE3PDF65lshEY4rWJAihYJN/0WB9HmrcFn6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLJyuqjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLJyuqjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96D45C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768458233;
	bh=sEfXncm7NoPtCOhLtLTnQIUjg4//XtU3Q0ZlYF8NcTI=;
	h=To:Subject:From:Date:From;
	b=jLJyuqjciguROPyt1xTJJB1g2+plM3T50uDXXZJEKd4hfTLGZ0vmxa6iASzD3aqVV
	 THxZ+5hneflt2R6rzFQMxNTtJGxG8zU3PAdWWjSa9cXvXwQNsdVpG1tykmI3gXJxQo
	 4wtlmwFo4+vfPC+fngU4iEdcnq+QOPjRU0AKgQb+1CGJTehRSZZMuGabekpUMGqG/m
	 ZqQDbk7QCanqbDUH0ZD4yn3CNirp3hcu3GKpAuRDFTxGtrnawFNxuhKhujzIZmP8t+
	 eiEsDtc+So64hLAoKTll2A+sC9bVjJfpfvtYpwZIkpef7sKgM1tvCRPOHWMoV2eux8
	 lzEOoUbmQgsWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0FD3CCB3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845823357.15295.6419251688869122356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a80592ee61d896e117ceb4fd89374d801a86fd09e744ea675503bb4edafb70
Date: Thu, 15 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768458233

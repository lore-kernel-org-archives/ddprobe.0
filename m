Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2703519D8A7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754976594; cv=none; b=bwFWvsEdc8Ky0lUZB+7g2GDSWUzQvem1TdyUXSdjz6/GrzedvmR9Z+NkIJjh2mjoWtzOJVIYJYOMLvBIo8Y8PsnZEpgucZcbNzBHr6uTYKPeeRvOuYey+Wal8HKLlwI0jHReii17d7eWGKqXTKQyboPcdfTJfChFxAM8sKPRa6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754976594; c=relaxed/simple;
	bh=zzMCyZFgj0AHjnGKifpnfRmnQK84XhAiQSVFo8x9KXQ=;
	h=To:Subject:From:Message-Id:Date; b=T4erL5bkCJ95RaDIA3NcM0PW394x6/0k0pd5VOVMJy/EUdSFR9ZVCnLhVF8/SDw3nEoWWgRjox1XhaBAkeOBWXrBCDd6HfJ0HtREs+BQ4H5iSXuFi6eEZ6o5d0fLn2KOsebwnAWhJ7QSNkgCVd3KaJvBkN4ixg+asvN1B19O/kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdpxAxG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdpxAxG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EC6C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754976593;
	bh=zzMCyZFgj0AHjnGKifpnfRmnQK84XhAiQSVFo8x9KXQ=;
	h=To:Subject:From:Date:From;
	b=TdpxAxG71XlnCTfVQxpXFhcOzJwOq/dkvwtq6Tiu+NUfIS1DzVwASMjRn4EcM3u1s
	 Dfwlv5K2U5zjLFeptRsxyr1Ysqssa+UWCOoCsagv1tU+4G7v/p6x2yxxUJKwo8ML85
	 zL5x1hdZ4j75qTfxiPkcCPncEdQEzyQJSIvQMkliZzPcMP/q3z/NC6SY4b01lmfHB1
	 HnfPLLIJ9QXR2gaOjtH2TXTqHMT3AHIxvFCbttJ4W15WU7KDnoEUXsKxpL9IKBNYYR
	 Qxq5yIIvMddKH5RXKIUlqaKSM7I3/ahN6p3gBUD5ytHBT22Ql2KJhJO0saC0GDE0Di
	 aa4DG1B/QcPoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966BBCA0EDA
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497659360.6118.8640087626186623563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126cc218c0475ed173843214442945b6de9165ea22a3dee368f00838541303f6
Date: Tue, 12 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754976593

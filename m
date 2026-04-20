Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1324833A711
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776697054; cv=none; b=uzDcb4pZxK5rLCDb9sy2REwqe0IyxMNzlXGBS0cSYYfbkrMi8LYWerW4gOxzopm6JsonKnaEE2msXcLVHBfyDNCxGMdnePPXNFLxX2pbgViZp8+uFTTj6eB6ycmJ7//Ha7uonyjDfec5ePxDI6WOMDkHMmAVy3Cbx26T/RPwgaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776697054; c=relaxed/simple;
	bh=rq4Qq0DB5ugBQ6kK5LrVnv4XH8628E1K1lUiNlA7ryI=;
	h=To:Subject:From:Message-Id:Date; b=OYtNppXTQkSbql1dfBh4ddOjatUgNHC3Dh4il0oaHu9R8N9QSoN9xCA3M068zCf5C9WzNQSnmjmcN7HIdnDj+S8hPiaKl14m2jwFphBKAWWISpkCUHglZ/YB0iREbi9KXpAXKZvX7qjpZT78Ut6xC5IulrOprqlCBV/DZ5D12iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFTvSn6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFTvSn6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78E4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776697053;
	bh=rq4Qq0DB5ugBQ6kK5LrVnv4XH8628E1K1lUiNlA7ryI=;
	h=To:Subject:From:Date:From;
	b=OFTvSn6xFeBa1MyNJX4twTSr/wffZbIQm97FGUs6t8M6UGb5pxA70DEGdPmQv96Lj
	 RQbHRmYKaxJOean+m31BHtPkN8g6ZZpXQlKghiATUcYL67qNKiT+mBmdDLd2ZniBjk
	 f6Xxf0gMs6J/ZAdLN+7/10xY7srpsqZnBIQYFM3b2kr0fb+zAHyLl8QJFyx3z7z09o
	 uQ4OQJIHkOs3Z7ooUNW0TIdggRtaAQ/hnE63skXyltZW//rviMjiRpWLnOOl8yl6lv
	 TaIvMpBWOD8Qcw3k6wN6CrRuAgdHeaKJT6/eeWSgaAJPB689gHttxYAQnPgd9Pld/l
	 mtKaqzVIUrdfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99ACF588E3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669705368.27094.4242482687787695336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fab6bb0eecfbf768fde7f97c49ee7376b47467964fbfe5294fdf09a3cef64b
Date: Mon, 20 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776697053

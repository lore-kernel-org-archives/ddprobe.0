Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AED81D5AC0
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743461994; cv=none; b=rMRjH51oHqQ3E0saHe0TwAMqFyqKC818F9o3SQ/WURd7NjWCHAJ+EkgGgIxLqhzv2o2uuJcfK///e3FXWTGxpI1Ki9kDsa/0T5QjcCfk49mvAxcWRryAkIjdffdASUqk746Nle7QI+WKIIlpIlyrnNQKX+j4sIJ4CY6JBDW98SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743461994; c=relaxed/simple;
	bh=cK0aGiTeBKzKIKSif28AiSXJbAavFSBB+3UhURRSfbA=;
	h=To:Subject:From:Message-Id:Date; b=IeXy3/SNBolwIjLSe+wH9ME4J3B0Dr1a5NC/9MjdaFm1q4tsi5JPgoao1ihp8SlaMmTN4Oxa2OE5683Ar8rGJDc9lMuysVHoOFGpnBirEX0m+ds8pAACerncSvaJCUxZuB6i9mCSBwmjX5UOfVjQSoRNbovj+ZDGPJQyMe0VcvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxNOhDC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxNOhDC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACD8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743461993;
	bh=cK0aGiTeBKzKIKSif28AiSXJbAavFSBB+3UhURRSfbA=;
	h=To:Subject:From:Date:From;
	b=gxNOhDC8MkqJ843U1h/dTNHT7ROomf59Nl32B14vEghJAiO3tG7IYY3kaEd4805xE
	 GaTqn5J+HDUMTEQmwnNi6bXRmAlDMfJ4sZhEkTdbaVkGnpIxprshNyky1H1+5A/AFu
	 9yQ1KLjgk+UO/c1oQPzdHXhfWwXyjGg9DzfOb8B9Da+aNqzD7oFCj2vg9SLnx/NJMJ
	 9275uqIy5X66VdseN16E89Ow04C3xE7EKijcfEG8d0Wk98ADWgOJKitUXmdSBpimkw
	 htdTnNIfRurBhhLF1UADVtgYj/HI8TAdCFEtChv0xmKH7nFPvoVjOlG3hmBNOphXzR
	 lTJQp5reVGpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D16C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174346199366.16294.5157874662930778134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd28ca02be8fd645061341f7941d23f8a0653250db5396cbfb48f5d3534b305f
Date: Mon, 31 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743461993

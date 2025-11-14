Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECFB32A3D8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763142594; cv=none; b=LRChJPeY1EHbNYFVK64/Lzi2V2gXimPwXtKNg1OnbltbJI1gg7RglpeFGdexr+Wx8gSYMM3A6SFVzXRhmoOpxvZnQwYbifqacuoRfIJUFqwUM22uO5N+Mi4rP7KBPcHuyRl1qLVjUmYtaxkXoGa7VQsb0FTNXXTMLPykmRB0PZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763142594; c=relaxed/simple;
	bh=Gxch/Vzd9Dt5O7nbkuW+N/iM9nkA85KTtwO4PHxSFQ4=;
	h=To:Subject:From:Message-Id:Date; b=eypj4OnVwu1PnCEuDccJpOnBE5+PMOMgo17xxpqM8vVO2LwXUhtvfIyAWKMaDuY6Munz2uqdfy82LLd2copnCo94ZVHiAyMMSEOyLEEaYsD7jANN++Cu88Qsknayuy+RjxjW0O9JayLArPP/AkCtldYGFFt18/8mk1xLxThDzHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1+KZm/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1+KZm/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A32C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763142593;
	bh=Gxch/Vzd9Dt5O7nbkuW+N/iM9nkA85KTtwO4PHxSFQ4=;
	h=To:Subject:From:Date:From;
	b=X1+KZm/GaerbzBaYrBa/8t43LanRdVy1qdlsNeoV14/tuVaX+SCwxfX/uTlCt1hbu
	 mb9eRsMlp88cjiDYA5W1b9GsrjnFvk9F0G1+8pccEG3xER2lCS7bUiARSa0TepLMBH
	 x3txHVo3mhHVQI6wstZLGmQ5SoN2nw9v9+lfp6o+UhoezaVo/aD1TcdBkv81L+pTRc
	 Eb8kR1oLqRJCMuFfKjvKEHoHwrAersYrODHElcp1z+n0agttKYLKQenmaf0X5zypHu
	 nRNXhmEggSz7mknhIyu2ORC1POzwg6FN4bzytFJL5UXfcIArOIcC4i3jZ9CWTDMQ2p
	 vyyIcjxXiB7Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B7CE8D66
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314259361.4487.17847367786196089046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f896de2e811d95a4a099dd828b2a6a86e9ee9f20161eae326bd4e6df1f106d
Date: Fri, 14 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763142593

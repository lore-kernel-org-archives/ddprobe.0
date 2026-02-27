Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A6428D8D0
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772158494; cv=none; b=Hf9ysGVhiAPcXjuZK2o5e3vtigYyBQyQMcaf+vs2DxqPGR1pFucEJZ5BK2fRcbPBtazYw3vcjb6fZJaRYJgURsEFzc1bATWYASPQ/7CgOUncQKVD4RNdRrCefTfdsNaOzvS1B03rC8BqXgBRMfALixf5mkYOPfdqsjkjRIuSrHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772158494; c=relaxed/simple;
	bh=95sNUMYA0XYrEbfkppTSu12BnA9tUc6Ch59GriyV0LI=;
	h=To:Subject:From:Message-Id:Date; b=YQyskMCulFwRxXCXKhBZrJk5hUafSBM6KhL6ETTYWIpiJyBsMBaQBt+W6Bv7kIVYRcZ3MIA3l+YDN5fGb4EtTUF6Nkl/uRYmUgV5Okt88mJLEn3IqbELoRuJG8WAxmqozsSJOJGxcGBfq9ozpkfOjL9AxxZ7y489hCYkM9CD5/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRUg4k/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRUg4k/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D2BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772158493;
	bh=95sNUMYA0XYrEbfkppTSu12BnA9tUc6Ch59GriyV0LI=;
	h=To:Subject:From:Date:From;
	b=FRUg4k/P8kATkXAEB1lTHq7M4og5X35EIf4xq+XjRNtA4wEvpr+y3ZB7/nSNK6Gxw
	 OteeC0I5JFuGNFzDacm54oC381MpJUq1tT8pVjtWFlvWlbaMAmzlcISM+cK0W4z07z
	 p/f5SW6sM2LzX5nH9eBGqMb+q34jDFlTAT0Y2E1umSQ/tF7KW6oPsMQtoZHWR4nVkH
	 qd61FCUtAggSdXSDxHAL5SGs2nzxNh5F1JXp455I0BwYfHsMkSXr1OlRklY1smI3DM
	 E4sQ3lDrPRYeAor3SDiFHE7CymWCZui0L34vUWg5SNFQdA69sNegTGT8ZT2nhaomFN
	 D+O4UOELF4JoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90880FD9E2E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215849358.5350.13163439721900123111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a119be5c58dfc701410c5e384face2c128c9645b7be490c3bd37abe9cef1875e
Date: Fri, 27 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772158493

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDADF26A0DC
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744109994; cv=none; b=AI6348zvYFz/pPB3uI79qPt7Dv3eZA83JYFZEyM1unQJLlaZJ3bbfp9qqb7u/cTA4j40Hpf/e8wiFhMa5JM0+PIrxMMMJewHc6GAZ2RCDEDFXDs6RDj3Z9cx+0oFv+XrTENCXMSRD2Abp0SLZfxvL0CcIyEH3MbKOuIRGWUhVOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744109994; c=relaxed/simple;
	bh=xIFuoVBm2X0ft6V3jl4c+6yEHnHHIVmTXMJQw+tNC+w=;
	h=To:Subject:From:Message-Id:Date; b=Otq5AHeZeaj/DHibqsO+qZQ/YIIJCiJSZ4BELuXU3Pks3MSEviiWU867NPfwXbOQJhOlRzWaaR/bi12CjzLfCYKZkv2GecL4jUUQu3zm8NwuTq+nk3VtBBNlCne/BmqrdjzjAhtACR7ZFWaEZPNgeJx1iupLmXQ5aNjTxtLyvtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3lMUSdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3lMUSdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE981C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744109993;
	bh=xIFuoVBm2X0ft6V3jl4c+6yEHnHHIVmTXMJQw+tNC+w=;
	h=To:Subject:From:Date:From;
	b=G3lMUSdGSssy4y1HT3u+Tm2jG/bpuiB4QIdvSZESxtLE9j7gXxK2IRkC2VpfB6vcI
	 2shsYPlsjffseM797csuEP1lDnzR/YJ8VeVV/DQneEnzi7VTPUNInkHaKs6MCk9j6y
	 kd/wprul/R5CvGc42JOl9ncvvnCKn2UPz+GxhvHp8MmTROtimSijXc4xX6e/0M4K6i
	 DZFQVjW37Zygu+eFVB19+LHLm+H6FpEuw/73SW8mPa+Zg44CI7fDKq7f10LRQF89cv
	 Ih3+Vzdn8GaQ2ygBSiBFKlwb6HchYtVcxif2Sk4Obr6eGqVzJfktdnbcpVJ4L06Hfm
	 mfJM8SVSkeyMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC30C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410999362.13618.18280004329290466896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc94ea8a1e4c1e32f1e4d1acfc3856b88e6a8160751382ee5375c33767bbe86
Date: Tue, 08 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744109993

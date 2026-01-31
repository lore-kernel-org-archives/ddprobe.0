Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1075F1B78F9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769832234; cv=none; b=lcAczwe9NeAVetTED6B2IfeV7KugeP/Lxg47hms8okTSvOg4S3ftfmtt15wShABRBuZY/i+Kl++Pz/n51PK/iR5vL/T6/3FA5UwHGJwU6t+OItKkzQJZvOuFhGZKI1Y7JZQb51vYazcsE+uXTs6W+q/L7N3OzJYF6J+Blq4ZKVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769832234; c=relaxed/simple;
	bh=H4dZqvAFe4ts/dqsUteNBBXyM4M/ENQB805HIz4k11k=;
	h=To:Subject:From:Message-Id:Date; b=ga9EVg/3U1chBeyq8BD4cX3ceSo4lyWz2xK7u/RcB5bGIrW8+gg+9BTARpfLo7OgoSTfWRCjcWx6wAr+nGKZ8X95KaMOHsnnPs4JWv+lX+awj7HrQY0SSQw+5JuDiBz+1OjXx9I3UwRbbXHhkg/2XSlUlcFImDsRp2VKGZM0Prs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewcwt1oF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewcwt1oF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A944EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769832233;
	bh=H4dZqvAFe4ts/dqsUteNBBXyM4M/ENQB805HIz4k11k=;
	h=To:Subject:From:Date:From;
	b=ewcwt1oF+WvdgB9cRYyw6cvkDvNIK2a9i5xcwqiIP9Vn8U8YfMGMAUF678+VmFuof
	 9oeAV1WkgbADSv/e18tgINGWYJgjnJJLL/R+ouXdwmoFLmMJVXanz4+iTnkn9hROYX
	 nxNLOMq3XwdpCiq+ae1kf5NupQcMlGRNplxMcj7K6UjqwEkGIto9NWuSbPk+7cr1pI
	 RqvondUbojUXqtX2HuyqOKPRITl+1piotYuPyGCraPGbDQeBeFNB51vSdXvFs8ym7n
	 6BM7LPq/ErJEVWQfHwoFyesK9RymMoqRtKV2GsQmog7/nvu25EVIv8vwEeLAWW9zaW
	 iDqtx05I5tqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9530FD73EB5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983223359.5009.8959393643250837757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c35c3cfc628a9b73b80f729126058b8ec3164c3b2d1d72c0a89a6b48e80035
Date: Sat, 31 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769832233

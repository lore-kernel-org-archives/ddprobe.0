Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4201A08AF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755169794; cv=none; b=Euzg0Jr6GyWCbKNgZMRFcv6c40wW2mvb9eM7rIEDn065kwmgIGm8obe9xr53G993sUv8jVXqPWelgTR0WceBA0T+YP12QtNx7XKx/oH6GsKpvqjTA+EmcBDc+CrGVJNlpXfhXvOGVc8APT+5kEQI2ozSSmUlsmj6HcFKfA3NKvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755169794; c=relaxed/simple;
	bh=P53+wFyXsirs3aJBiNlHCcW2XawzVoRf8TPcWWQbHIk=;
	h=To:Subject:From:Message-Id:Date; b=f8xqiQCo/+FfDCvoO3l9ykWdRLxy5N3yS90VLrrDuVLKLgB8Dx0G9qKIToSo4Zc3aqaA926oG8CwBpPw/5WN/hpH6gjEcFGXlUQVezCER4sqCNfEYGECAOdLxkiwg38dvDFRtMYUjI/u6mZ/RuLw9K6o8dVWRJRVfmG/Hp9w2HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLfeUF9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLfeUF9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5180C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755169793;
	bh=P53+wFyXsirs3aJBiNlHCcW2XawzVoRf8TPcWWQbHIk=;
	h=To:Subject:From:Date:From;
	b=iLfeUF9sNiG22VnWSTToSnpx6f/3UA5b7oBVDEvaap9zGKzAnG4ZDlRR3FlrUxCTH
	 WW8iSL33nDCy8Lc38YqpjA6nIMJp7eN7X0FrAtwKSeZAZrlF8jsKV4CtKrEVVxl/zx
	 tWsQkIENbgi8CLtw7pXZf300DToCbfdjIuUWeRqaEgzYe3xTWC1aLN2mS2tuVx/Ndx
	 H/hUbzWIgexOOTxbOOzos5TYaUHITlxwM2/sSoqP62nMbJgY0vPy3RZVukrQvZSkuu
	 fxkZlGsonXJJP+UuJeilkLAmoVbMaubexMNrWnFMqULLMtNulO2xBVz2UKYXVUZaEa
	 42HGo7OKppYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6ACA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516979358.14130.15157482856800519131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657315cca3ef838939efaaa446a58944308550835c1f716a8e88cee27d56a572
Date: Thu, 14 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755169793

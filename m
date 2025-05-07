Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352481940A1
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746585595; cv=none; b=MRwZrziwwcvCft2qQfT3G6p1pFk2+GQz13wlc40UtBMIMevuCFm+VhasV/rz4XlRTPjN7I8BFHFgi4Rv/k2NcY5EgOSrMqBFeJaAobwLTeZ6gMH81mnLriNp8nlUlMz8A6dY8+UOeYICe+gbfULELnyJY57ikvSgEPCXnhCdJ9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746585595; c=relaxed/simple;
	bh=9Vqjd1D0FgKNYP/qdY7kOCgf7KPX4pZzT5Qn0WckyWc=;
	h=To:Subject:From:Message-Id:Date; b=jhKpy0QZW/RE8RVvRywIpj3RlSsE+mFmvBTYv/4Fi/skIQETyCHJa4arhq3aMIoaklsN/oJAQoiblkWvqLO42T1gGjgPH7kLDSGbinjs0caSzzWCBUztOw/SX1n+oMBufRSUsk4n7cD23NoG7O6nrSc0GOhhDaBaLJTI+UF+Ymc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNq5UA/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNq5UA/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35F6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746585593;
	bh=9Vqjd1D0FgKNYP/qdY7kOCgf7KPX4pZzT5Qn0WckyWc=;
	h=To:Subject:From:Date:From;
	b=bNq5UA/ixO0HwyepAWZPMbXmOWJc6oJlpL88++GuBuiwdwT1fvwS7chpEvac8JplT
	 N+bYWeLVVbNvTZNU3yCuI2kL5jXABi8o2OYC5VUFwC0QdeMBWj7pJCK2C1y+xgJqLO
	 AthVl0ylJxj+5aTF1pbSuLDWhdt/t66b1hUDpwoJsss05TFr0eYnucpnCAdtNaMsnI
	 +O4Ckr2y+AIZK+dnSXUaP9uX18D4sWXxwRL7PEl97htHBR0nQK25ZPH/vNL/3qVcji
	 cVHfzGT0Z2YcmzpOGC3+fhlpeVI/j1JIHgWHsN0Nf1LVDeT5t06Qg68XAJQVGR0SlN
	 X2muahHl3CYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069FC3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658559358.16445.6951373547314190073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee68c38bb36fcad8481f2035cf1a2da31082b2faed290a95918b298ec2344c98
Date: Wed, 07 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746585593

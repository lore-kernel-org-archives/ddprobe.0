Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1691E4A9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747480794; cv=none; b=GazYNglgVTIApJuXzbr3KfnCMA5/G2wWeKP67/UW5wBi5Ef2gpQ803GVXhTUOTPcLE2oV64Qq0zaxfRljhS3BMfDMHN4HqBwIzHp9dV2Ikz8jyr0U2PD1RGaDwvV9x5aYX5rmtxK8EyQbSD9Vtbd9EnRubC7Wjhzw02oHYZKWaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747480794; c=relaxed/simple;
	bh=V9C3MrI3U/I4vlhSJdH1mDsRdisF+dA7jZG3/2QPDw4=;
	h=To:Subject:From:Message-Id:Date; b=NkZTxAKcYjMuftsco0rOCb81kZe+q3PCX/N0FWbLCE5eTmCEDzDfu2TfMRV8pNHrx8fFlchMj6E3ZKgQkpubxq+ddEutSBRj+EBmYKe3LCmivumpIZkRLNeChdmeDvbVY4wWQhXI4IVGdl1sYPYyvXsV93xbLw6OpPlfIXHqEWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvK+3xw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvK+3xw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB07C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747480793;
	bh=V9C3MrI3U/I4vlhSJdH1mDsRdisF+dA7jZG3/2QPDw4=;
	h=To:Subject:From:Date:From;
	b=DvK+3xw4SlF5PHv6f/S9lQc4FDKWqZte48j1Hf3gRMVERNHLLLR0RsBPrU1OU14pD
	 3V5xYm1bERCz/Z8rcL2Fdeiqiz4yjlixoM8OnkPSkYCxZvFsCXKvK3C6Wm0fO65OMS
	 bvOLvSAPL9fJWg490ELWd2sgno/njClSj37SExf0wNDGsfa6yflpYiXYhjQi6tvpF+
	 uFTc8vcher+mj7e2VwDwnFqZ0j2NpUek7i2SK5MKzgidlMOZt7CChZEIpSm0/EHPhx
	 hg+BcpsV/2bjHFNeTDhwaAwwgGdLsFYs4dNl4ZMgHRt2Pr5p+6vnzr7Dg508C5nBVw
	 +TjTdk6Kg1l0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F889C3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748079357.23517.5601413169515430307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c0c72bfdf290f7ec4d7559d29120e4599db1f04edac717d55704240055f06d
Date: Sat, 17 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747480793

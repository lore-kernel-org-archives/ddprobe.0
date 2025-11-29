Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334B33A1CD
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764390174; cv=none; b=gganJyg+k6+jENmXub5/IdcQAAEsqO/ChcJUQyOR1DFsMFx8IeB9ox81BisGPC9awBzTVjBJ8OgOhWrSVFDWWRXTUG8AGJxwjja5OxIBl3AB/w7qm6Jo1rEGcy01DgSqRXJ2d+wSzqD6rHaCZmQXCdDnHfFMo29EfqsKLPh4Z2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764390174; c=relaxed/simple;
	bh=iyd4EuZ10I1YzbKJw8H+48kn/ovY0cNNjpFXZTzik1M=;
	h=To:Subject:From:Message-Id:Date; b=KDMYZlba4DK/rWFGjCACdpuMU9fgTb6csSEQinPP9JsatbK2AGE5vYxYq8T34MAXj5yzG6wk/YelulGSZNhwq2tzxYW+1+/rly31qFMaq1OzuiRKP8RzXXJ50LJPdiGAsmYNod10xyW4DOIoDmPsajQlmDEX4R4R8VrDD5mGLQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0hcl5IB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0hcl5IB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECF9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764390173;
	bh=iyd4EuZ10I1YzbKJw8H+48kn/ovY0cNNjpFXZTzik1M=;
	h=To:Subject:From:Date:From;
	b=p0hcl5IBa37nAuk2SZJ+knOkkND7ZTQmNeFKhAqGuvQHHDlAJYyNcY7hVWslZoSgN
	 8xnUMs4etfWKC8UPmlw7eM6Hgcs6LHgRe2xi0LwnAd+x3KOrTuyY7ubSvNR6P3PwQk
	 Bk7G9Lr7d6aJSRqTOLCTEIAfZoisz3/SmMgmS5QCFVEllzxzFK9d/yDDiG2WSHD/s3
	 qzs6FRC9abc+5bJSfjQT4zN1YtxM3vvIFE2dm8P60vyJcpoK9Y0TJ1LpRdLnCCt9UK
	 fBngVRI2qAgPqmfbi0BThzUWnPyq16LUw2kEGUo2nWmGzIfh4ImQwW2rQfTJ8Lp/ip
	 2XP2mabYYjtRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B3DCFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439017358.25852.11530814700206093355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820c8e17461c4227937439a7890b085441411f1304b46687583f9065864015a2
Date: Sat, 29 Nov 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764390173

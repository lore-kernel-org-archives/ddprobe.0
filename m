Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1843514B967
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722598554; cv=none; b=tgVH6lFO6Z1+d5u3l1TBnl/w9LON73h38d7fyP+4IQOblosd580C2dR5QFCTs7Nsh4xL/kXvTQH6cQN1t5mAtpd1tKGxXWI/uH7XBe6ebRxmPZa0OaeDUZeI2WGfz+gXlQKI58TP2awEVznsoO7CW1z2K+Vrbkl/LF/O//dAOIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722598554; c=relaxed/simple;
	bh=DL9sq0qCo8GzDg7BPVSPzguTs0qgaypH4F2zl1NZwQ8=;
	h=To:Subject:From:Message-Id:Date; b=Jg9KgIbqktI8cDYY94K6SHEGhRJsYaWnGXf085TL1OxqExQ4hwnTxV2iAGMKjx/2USCT+ffir1JtZC2yZWW5smDEqvyWVJfrBjUbugJpWELym5MaFaRXcc3jt0nQoXdcsmFOEijQwHsnUYJVvjwbqByzEzlf/4lmKpxCbZwYBIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ft089qYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ft089qYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FBC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722598553;
	bh=DL9sq0qCo8GzDg7BPVSPzguTs0qgaypH4F2zl1NZwQ8=;
	h=To:Subject:From:Date:From;
	b=Ft089qYklVsJOunE1kgHBJ06BpDiqvcU7oYILTy8aJaK7zFr/h4vSIZK1xVN0Y6mh
	 u7Gw1wKxuz/ZK87g4e2IXy8svCnJhp5ZKH5XN72MO9J/FEub+Z1skNjPT6sGZRA6Od
	 PzI8Qo1fODSa4bcEkPQB0kU60x6r/xKCBCduYRQ8F9liEVUE7s7YnBWdrs+enmVi7m
	 QuFxm1mO1C6XWj7XqitkpWvMsQqVc0A1yXiwieXcd81UsKGqWdu3l5Sxmy8fQnBPcc
	 Zwk9VmSfumuMxANMpdg33prioFNAK4LHjTAth69gPHDdwtmnqczsaWQGImJRzs+KqL
	 FHcEYkYy2k6Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991DDC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172259855361.27140.4481022835965620776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb20064a547c0b61904afb4dd47b448956fba41e93a3176555649754faa20a6a
Date: Fri, 02 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722598553

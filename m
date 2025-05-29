Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366A41B4231
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748535594; cv=none; b=e8eizvfVC+tF0UgAGeC5l+SbS2HLW9j18yJenVlOxmVon5UuDm4+HzvPf1hdZ9vi5QYIhbAjmVYg76xsNweMYWLc/BBs/zBCwvlvAKB7Zd1Kww46EWhpWcMabOVhM7xbe6imQ/FY6WB+7y33HCx7pj94NzcHK7BAl/R0pcu8e5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748535594; c=relaxed/simple;
	bh=yqtxKzld9Y7gdJCLrpR+c4LhcTiGvScxtGm/0EmmgPE=;
	h=To:Subject:From:Message-Id:Date; b=Zl/YkapLtbN0aN22Uzi0Ba8zcb46O4QjALlG8cTyPaBr5Pb9Gq8x3mcnkEsjG1rASPhhmBm/i4a/XWKhTdBCUc8oxVr2E+OiSjWrDX8PUx+YHKNIvrdgwq7VSy0YVfUNyuvAv2V/QklUjfJKLZFYCVPWq/t38FHBhuC6RPuDdsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBqU9CB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBqU9CB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3386C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748535593;
	bh=yqtxKzld9Y7gdJCLrpR+c4LhcTiGvScxtGm/0EmmgPE=;
	h=To:Subject:From:Date:From;
	b=kBqU9CB/cHF7MfMEdKNztiuyxC278K8ZSAEN0kjGhXiwQCX/f1y7e1BRsvLLbM9KQ
	 SfkXOjvxqvPnJ/cOEPZGdG7xdWOpIpTSSrz0rlCqYEYsSIofQAXIY8p+STIo5Pl494
	 cwDutH1qYJfV9ZA6LxRGIcVmYD+A3jsXljKdYYFY6VDn59qH/nxEctJBRvf2n8RIlS
	 0eH8yr3Dc5c84A6lZBOljbFBkahqVDsFAZBrlHHWkYdaKLFzZhX+gBKpqryzp1HZO0
	 4I0Cg+OFT4oO+gf/IXgVw21+Jzr+dGwh2STw77p0WYq2falvlMComx1UxVHAaGT+lj
	 rGaYPv58Uj9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6AEC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853559357.30639.6149777817405895500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f119139de366fb462d9c2905c25ad91ed2dcb8f4e53493be3fb1536ce4b13b4a
Date: Thu, 29 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748535593

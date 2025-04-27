Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417AD1A8F8A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745744395; cv=none; b=sEHguDM5zXZHDvE6FrkD7mxCkkm7B1w8as25NwAa6UUsPKqg9r4RzVNejbPcNv/65Jg0NtKZOQFlzjSTvbrqy9cnrF2m0tGTJhl8Pry54vthPi/niFqVkpa5uXS3cWoBn7p0PYFJkjYCJXHfzyC7yjUoxtVWPKdnkgaybJ9WLNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745744395; c=relaxed/simple;
	bh=Td3kBEsJK7VExpvnibRoOfhBiGucK9JwDpgUBxuYXFo=;
	h=To:Subject:From:Message-Id:Date; b=cbsK43/L7pAK5h2HnXXnhwPRs+CSF8z8QCk1EortrKBI1OG+WJ8rvbqxwk8FLAiMfEQBNdAO2o3rOXxfcIOl9MGEjljZ92zj5qusElbJeAGDNUssssKCDkXXtecTFe44CrwfU049enxEYy7b7zoT5967iLWSApQuRB3GU/WFdu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9t4XuYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9t4XuYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBEAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745744393;
	bh=Td3kBEsJK7VExpvnibRoOfhBiGucK9JwDpgUBxuYXFo=;
	h=To:Subject:From:Date:From;
	b=p9t4XuYH9XIE7xzlWBsmsnMA4yR9zJjsD+1WQ6bD9zEGakQwBFWtDowG9RZjSCRTu
	 geYJJwSLm/ytxuT+Woc9k5VHF1/G3j6m1kCwk7Dr6oeL4Nc5w7TzL+oN7Tc2nR0A9E
	 surMuZ6XIS9yFf3/UU6705pfiLQC/0p7N821D4V/cSKUVHLCUejMDliwO+G2iOyaRe
	 ZvfdZKR6DFPK0Y4N5dyOZDgHkrMcZhBiDOQQ59lbNDpejMIPKiEe0HHP3auq//9cho
	 cBxjJcYr1PWK02PQIvh6+/RrTSceRR7y/BwlJc4+4MKA6JcGzb46jDn0NGTY7gxb4X
	 SXLIgZfby4pXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D43C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574439357.18363.13449126814724174958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19db8550243e371df3f67d86bc837e2f51a4d95178c4cbda004354633649edb
Date: Sun, 27 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745744393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2330B320B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727408154; cv=none; b=aSwSVIaE9/76H77/9QE6bL+46XsPqY6uAeRcjlGNCVm2dHFyPAtFB/mHWZUKYQzdcx5eFY/GwFUlycdEYClx4CdZOn8k0Nc5oWMM0goMW8eeJZfW/nOqJ5+3oS7chEvvFG5ls3ihxVal4jwnTtCrCgdgg2Te0TbQGE2VzTtEcZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727408154; c=relaxed/simple;
	bh=/tMZkC2SdAFM55yqrIl9NtPxcNGB6djfUXcxwBEMawc=;
	h=To:Subject:From:Message-Id:Date; b=V8FPXMJsJmxAmMi5qDn6XqQWIGp/+PIjZqgzAmzAZxPhfw8uXgyVr8ddRDtl8Bm+e7hde/Rm9wz0r6uKK6TmZVLpK03uDP8/G5vnwjdax6/ZSWVPtgoC4x/ZoXqxj7F7hd/jOAevhfeENeqgyp9EksF2kSYYO13bur/q7YBO4ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLuO/Qgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLuO/Qgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A642CC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727408153;
	bh=/tMZkC2SdAFM55yqrIl9NtPxcNGB6djfUXcxwBEMawc=;
	h=To:Subject:From:Date:From;
	b=fLuO/QgpSEeH3ZA7SIHsgWDQJwtdGkMzb4HEyJ+JYrtsjVsbUt+W6PoHP2yPOkf/k
	 zbTTEHRziVpF1Wl2rY+YkTpZB+ZRZgyMbnEKdPliMb5Bo7rgexTq9aiBbWWdmp3y73
	 yedwAhZoDeTgEiJj65On/iWvF7u6IeO5W8R70Q47WKJfYDAhmcthTwoULQpZCNl8aK
	 6/gu1GEiDjC2dTJD3bycTk0Nysb6QGT6GxSo8/OIgBr8a6HU2hsjlpSxg2chEg6UXL
	 2KDX9iso3UWXwM+DELLq1YsSo1gIqYBghN6KBIOLDVw1Oc1UtnFWEJcaWRDo/yRYC9
	 ckT11JLIY4izg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531FCEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740815357.11839.9111637052546696021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a9128959862d1ea4286aa49bb89df673c544b004be538328eeee1219113ffa
Date: Fri, 27 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727408153

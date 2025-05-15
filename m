Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446621F4CAA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747295994; cv=none; b=ilCat/0qiAacfj+U4T0O/h2UR2dFXh3iKdvdA7auwIEPqkhRsCni3M9RRkAx89LhwUXPuBC2/fecxIJUFkPwpIHtFV+7eJryls2smaEp03n9VnEL8aNBgGLUSg72T0vKmpIdwQspcfgb35vndL1/r9JwBwUteqhbdgRv0y0tlA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747295994; c=relaxed/simple;
	bh=I2Jl8QJB6Gjh6rrGpHzB5thjN8Epcf5z3nrgxFAGZtQ=;
	h=To:Subject:From:Message-Id:Date; b=ny/KEUQpej2qW0iev5WUHTZyoPWAseWlhw3xq8CUkhqOToNKZbQKdftFj2uCLxY6wVPPjBpV8wJ0Em6q3AhIwbVb5C0eF9uaMMv1fUN2FObynrUUE10CbMjzTkdOuoN6PSc0I8Ll50qieMH54EvvQwJT6HiS9aYQIvTEckoC3X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4IEDP4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4IEDP4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE37C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747295993;
	bh=I2Jl8QJB6Gjh6rrGpHzB5thjN8Epcf5z3nrgxFAGZtQ=;
	h=To:Subject:From:Date:From;
	b=S4IEDP4N3IVJLci7sk8Hm7mnPcDyMaxGam/5sfvOvyWyCPZjxXdjs3AdiDIy4LsbB
	 ZCjCbKAlWOfBNlft/qJ5L574gHz1/zTRINo6eimGotxVgCPwKaYOnRHqc69VdIVVQN
	 Jzppu72P9i+pwxJSj3v3Jv89ghGr8H1HOeeBLA59YvWsWOgqWL8g2e5XEmnsUFi6fY
	 nFpL5uEcA2hEpixuc6xJqT0557QIP8Q7+qWDiHDGTM22y5TldZMWM7Wvfnv3chYNZf
	 Z2GGFkxXYFJw1qY3qdZ8SqaaAWoQ5k2UOQXqxKy+eUOmjt+5ENG5hzLtVAVxtjewzr
	 uOjFWyBS9jrCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23EC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729599357.25367.7439718288158916926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7166d2036236537228b27af3ef1d57f7a2ce65c94038661510d39d78839f0ef
Date: Thu, 15 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747295993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA385680
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747492195; cv=none; b=cX2CZUBMmgFOkWI4lkLMhJhT3gW7IcpKZwPB8Zxz97hqYv/pAyqPj0pxiG1u8siWU0uh2AhajpXAmDqFFdkRSy1J8YFtpf025p2mm+ix0HZXs+OPFybOM9dql2vwsyuz1Z5ajH5qdfQjTa+YcMk79lFox+JdOYCYWnMrOZVV79E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747492195; c=relaxed/simple;
	bh=0MS02Kl0t3GZlhZlGS//oC3OvhyZynFnITgdg1R319c=;
	h=To:Subject:From:Message-Id:Date; b=V7Mh7ErM9C7PSgXPADVSaOTKO4BJKTQfYNYf4X8rfAH+qE8QQDoBJAUsD7OKDBJdI2hJVGda+NrH9H7uKdOhNyVzJ/7KSSyijEx9KYeR+xccXOesqHYcFRmFzhZVBcvDc75asSw2X2m+U+O80T9vwdbyTOO4PW+aOGby9qN3Cqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9fn6KKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9fn6KKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E95C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747492193;
	bh=0MS02Kl0t3GZlhZlGS//oC3OvhyZynFnITgdg1R319c=;
	h=To:Subject:From:Date:From;
	b=Y9fn6KKFQNFMP7tVmPHLGF3Ojb9BirN54712dV1rW3ujlgd4Ers53g3pDsf7PiFG+
	 ctCM9FIYv4AbsMklweX/KYIvMNjNuFdZJlcVbyW1LvDNVrOzI+XQeFPJx2FGBQgUjW
	 85D6YhqlwGwQ+vR8Qyy5fRZA2SnWMajrJNRWsShexSSN2/U/ObAD6WrI8p7LkFhn8k
	 QIPxqL9v5LOoyKr+GOo8yxPUM54ZjAdEJj+BwSn+lzogfkGISkvfvyMaBw0TI72b0A
	 jcxOJl7rxNg279cHiZU0qM2WvGtIM7FJ8oYqqtaBaTqRuALNlaPz+kT2x4VInTM8Jl
	 h9OjxAzx+08HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E4C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749219357.16634.149766841649412455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37416c0b7f3d5594c74843627915307b52340e2cacabd46eb20b14f172d113e0
Date: Sat, 17 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747492193

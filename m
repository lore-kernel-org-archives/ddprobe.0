Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D8F1F4295
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748384394; cv=none; b=B1X9MA6hPDM55shCpTrV1D2o0CMm8kb/sIjv0q+rLrCPqIOOLljRZrGLxeo/na2ZBL4+z2uGFsehu4BdtTtOFcmBI2kUl6kh9RG7CA2ae5MIy/0C21lNj1B4PmDzl3LTnYa3ApaPndxjqEoYBU4mkhHs+odV3CF0Gw5YLdqh9b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748384394; c=relaxed/simple;
	bh=e3rfmWbWq9uW5quEmLStYRmTJg4gPIdO3hDs0YBdqFI=;
	h=To:Subject:From:Message-Id:Date; b=hu8JF6xUFpDzHCXiIK73ZD2sXis9N5Nx/peO5gtPfd/QVASN9cj85d5ET4ev8kkurlBZ2MGmBs4F33Fvu7nwVANSUIdblv/48+VqQge1Om0riHS/uAJkBpypbwkMoge3J20HMA8o0ze5J6aEEr8KDqh5YV/5NtOFfGlHCd70Ito=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8TAWAyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8TAWAyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D72C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748384393;
	bh=e3rfmWbWq9uW5quEmLStYRmTJg4gPIdO3hDs0YBdqFI=;
	h=To:Subject:From:Date:From;
	b=W8TAWAyP912AOT9Q8no3qgINOR4KHk3Wkjr9znNbiA6Ygf97xnG2TkM1QcIcqi/np
	 /00JAq7O7F228FMVWvDLClkO4lYTYKQvoKKYTZBC4fvuhapjv8HzYJWfqq0Xg1bQ6X
	 SNz7DMtB05kd3wVdqb2VwlQd5T9f0ypswwWgPGUcDGO9taeyNfCjsP8EctfsQhSwpA
	 YZxZXxEX2PPKyjGoap5/BZCxFZNPrNT2vNZZV8jRK2lyxtv2yHhL7i/pA7HAc1QoK1
	 OxF+4STJW31rBmutSqfV6pnzPJT5Z/Lq3C9msEvUOWDFCVFcpjHZ5wKSEe+v4E3EkH
	 cbd/Iunbdun5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91246C5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838439358.14689.905420510034955537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a02c0f85056a9870116934cbfee58c4e6d1c3a9a85d7c4a9da8f302878df88
Date: Tue, 27 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748384393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8651CFBA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764398574; cv=none; b=nK/XsRPqirNVz1fp3CsGKEa8O2zu4EFy1jnBjcUVgOekUU/Q3ZK3JjK5iTNe/JZlX16rg6kuFM9yZqVd4VGfBEmrlGTDSqkkcLAbpaAFc+mXC+8Xy/FqwZhLNTdhxIeUC47PIQlLjZydmn9hwv3TyN2ar1Xarjqjz+rBqI01xsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764398574; c=relaxed/simple;
	bh=sm+q0ewmFtUg8N9gFEHKlKAdhF8zl6RrDK+q/BXprUg=;
	h=To:Subject:From:Message-Id:Date; b=qPt0rdHy1Df7LKUocwdr+cIP4w/B0YyTK0dDfPuys4zU6m7uvf4LFR6EVdfFoRMqruMGSxJ3Cajy+XsgHEjI26rPCkzYCwSi6hxta8JNH0fRIF5oJCfCw9tHpwS1cxc3EPNvX+PHN31MVaGBZCtRCI0JUKkOiPMdXEQlSiy56VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPvc6bc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPvc6bc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764398573;
	bh=sm+q0ewmFtUg8N9gFEHKlKAdhF8zl6RrDK+q/BXprUg=;
	h=To:Subject:From:Date:From;
	b=lPvc6bc7E8xNnBfyI6XOP+rLrzPpN1w8BWA8e19HcCrZUOBjvVQiSYvCX1AJ7w27T
	 uiEh0fJtufbrV+1jK9joechw/iCJlsGp9+JhXfSVn0UILZBxkteBZserlDB0UL46m3
	 YiQQVQydEzWMNeeRx14+pPOyTKR8sNer4JByJPHOL03nqaPhk3DyXo5hqu+4JGhhGx
	 Mse0azrNk6SVltxlLM5duGwbpHqVnyQzTk8Yg4r1p3RuU94L0iuzAhnsKaTR1JPlub
	 j7tCgugKI5EoIYuEyRjcMPYHqGnK++lvlpJeckihziRkOdluln8CXY52z3r85Wo2rI
	 qGM7GtXECl45A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9982DCFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439857359.5251.14024604934178439155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248c22dff5c41d3802e032967a78b47556863cf6fa684ce47974aa5c5d40aa14
Date: Sat, 29 Nov 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764398573

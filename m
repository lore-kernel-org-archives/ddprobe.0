Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8A12441B8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787502034; cv=none; b=YPYEqjv0tiHTsatcuEEhcEV3DhsYYKqGm3KZED22MWR4S9CAquQ6J20vR7vHIuWbmfd2CDyE6dZd74XdXsK3OLjEAxO53INOpc/UXf4EeaBmckKBMOmhha6Hhfh6IJTLvqgyOUGcnWhf9aNU7241kkSHrVjSEBqFhqCp+LrJra4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787502034; c=relaxed/simple;
	bh=z9IBZUTvW0Aiz3bsJRMOQNpxnbpTO3pO74/y5ehRRpQ=;
	h=To:Subject:From:Message-Id:Date; b=bEQIb0NQTZUZ9V62/jySl9pBa0FSpvv+PqK+HAFEbeyh5xSMpm+axPu7YJGwFB1OnVFXdxASxxKHekaN4BI46KWPOfJ8ErAx1+EgSVNauK+/bfY2YU194ESyvbDFqUyPcJbLOFchnxtert6QpIJyQUr3pw4UWrkP6J8cq3Es76E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1mrCI3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1mrCI3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2657C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787502033;
	bh=z9IBZUTvW0Aiz3bsJRMOQNpxnbpTO3pO74/y5ehRRpQ=;
	h=To:Subject:From:Date:From;
	b=Z1mrCI3nyc9H3c78QdEsY76glGxLEeIdm1VCrMQHZ52Gcyp9q1pmc2meVkNZFnXk+
	 yYmxC6kb8/RUCgK2kLAiYQRorN4NBZRAAwqOvjdZdRZxHvn3PqTAeogqNgHlqwOCKT
	 h91Zc21HDL6JU1o3hKb1zy2QPN4nxn0+aOzS8Uc0YN+DEUZfyUOqJi+nSAB4LiXhJU
	 PQOQz67gRObhJRSuGzKvae1yELRB+O1NLc5E0KhgvAzbm+0Vo5FcH88/oyks9hSVMY
	 BnNrQRz+u6YUyHWUGeiGr3guHS4mWvFOdLQ5WbqakSgz+RN9IRssW8OQsNR5MhEbEi
	 OedyP9/L9mE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF02BC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750203369.8956.8593636997513584027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b740e2c4746e570ea777fb7db11b089393a3e4aacddc5e026c2ece7f51d62fca
Date: Sun, 23 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787502033

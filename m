Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406DA1DFE3
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718286503; cv=none; b=mq7cf6HoNlRSB94Io8eH9O0ZT9nzYzumxXxwJ/2GWNdy7oFMalItGwUrVRcGcl5A4u9k8AAaKR4UT1LONspcLtcoFA4K3al5neRGkVXLs4MTxQJs1oSo83Uw+nSO0SwOhLQs+2jBdb3G7UuCPagoQCGFSjLYvjJTWzXy9WvNWCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718286503; c=relaxed/simple;
	bh=owhESvGxXBgEpIROsmSCCjXZk8TDr3WYppGS8smPyJc=;
	h=To:Subject:From:Message-Id:Date; b=lkAOqD7tWYC55Vr4UQ/qY5hoFavFCz6WL4ENK57eKtgeRrjkfCgahihzlVMJqXH2o8Pw8weYk7Ud/uqBomt2PFR8Pq7BmJwa/cEcjNK3Jew6z20w5dCFUdF4hBfeIdgx/YrRF1jDFd/bK8VYxGa0xLyKF3sT44N5tZqhjswvruU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0WzojKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0WzojKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16F8C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718286502;
	bh=owhESvGxXBgEpIROsmSCCjXZk8TDr3WYppGS8smPyJc=;
	h=To:Subject:From:Date:From;
	b=e0WzojKfNRLYXvw7eZvN+U+ytPM39WJGSStMRJQFBidESmOuN0nVVv404PZOdf2tb
	 ykznf6NIbhQElx5djAwris+D+6i+6nPfp9/zDBcffVVfbxNvwbAvzfhGsE7YhVWbhG
	 OQ6LTTfkJZIIlTagivj22or8hRfOJuAhR6QCekRPLvlWjCOOCDiSlUgQcFCVaQ3gw3
	 AMnoqXXtg9+eiNlvvFRDwXFluYywktZiGBHDv3ic/jUUN2FRDls4PR/q/MVbWWJFvw
	 qFuZCKtrszjahUy/LIUoFuxZGAMimNKyXbsRVRPlQ+lm1CCfRn1TIs6l95huEjLJck
	 E3gphGBRnBWzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED2FC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828650276.3309.11202990024935254437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ea258aadccb70c6a8975013687ff262643003d091ebc90b13c489be55523e5
Date: Thu, 13 Jun 2024 13:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718286502

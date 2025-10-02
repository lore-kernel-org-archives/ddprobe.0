Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275B929ACC5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759410594; cv=none; b=gWKEz2f8sYO9MKrZAFP2v+RUfFfWSkKg8k4BWaV/xyOEMD6vXwP2edKaTVt4h4cH3PnuIbHIJeV1bISg8jrxradaXUuvPsibfNDLR+p62kcPFRh+neM2pCLBb2nGr0Sd+S4Xvtb4i7ual2rl6dOVnZbkhxgkn101c89AV3WzcEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759410594; c=relaxed/simple;
	bh=7YBJQYWX8XhPc2EZSUbTi6xmPbV7wXK2LHfHYQSEQaM=;
	h=To:Subject:From:Message-Id:Date; b=QaNwaBG7shVhHhfFB+Rt/RcvB920zTqsRIc5JjK5V+6Ano0F17DQeQljEghtWfTNaM1gr1Wtr/M7LSXEfi5nS+DyOK9WzeKRMNBxrJl/awK9bVTN9mSvLs/ZOrNVpjQ9n4aIPtTHxSPvR4kPukdG5qqpfdAmsnBAoZxm2UkVN7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2yC+SEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2yC+SEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEBDC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759410593;
	bh=7YBJQYWX8XhPc2EZSUbTi6xmPbV7wXK2LHfHYQSEQaM=;
	h=To:Subject:From:Date:From;
	b=U2yC+SEgYfmAmW8+udvAvd3xdGeK8JKFBytp4x9E6d75xG/pYYjEFF0mw5VwG48NR
	 sSO2zNpOLI/9UHluabEZLRPfJrxC5c/rKZaOrQBFYJKKI6yWnLvZ0T/CPuscwDIJg0
	 LDbSccXYusUnYrv82mQiekm51HaTtpGPWG1owYVdKzZ95gRvUW4dfiDLGVyXaMzEXQ
	 YFLPsGM/5H/uNCtYfe5Chqb0L764qm5bSe2qjolMUsAVs67VExEV/ULjtyzZrT6Rbp
	 pHGTPKEL+hjx7FFNWRXZmxCQeJAFCsAhQiS+TRNr5doqmXJsRSXyx/V4spoz8ygtcr
	 jrJoJDqYjIPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD9CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941059358.31660.16662422068640426154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463947c5ede7ffb1e70495906e492846cc2509fb9fec1615870a547c514303fc
Date: Thu, 02 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759410593

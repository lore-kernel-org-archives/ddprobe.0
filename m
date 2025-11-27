Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAC1221FB4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764273174; cv=none; b=f9vIwCMJp8Ykp1cdvFPye9WekAmYYaQDaMlQn01ctSAhQ6+ivgyKmtSSqmH8oAIuq/j17eR5CtVRUdwaxd9E6XWOK30Wc/DpgJL0LRqmf5pM7V9C3TdYU0Hpc1SWeiA6b/dRPju8SjQ/usi8np44W69RVQNnewQXxhQTwuA/QGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764273174; c=relaxed/simple;
	bh=drY8D+SkbfQS7WVrWqNVqvEPb9kLpLkuaFREGCJSLgw=;
	h=To:Subject:From:Message-Id:Date; b=gqG34fDMJFEYB08iwu49kpJHRT5ZzbbZkcdCfdtYZo0FLc7Ciq4bxBIg9MfOcSXyCPXOoYw3GT+m1Ol1B35CnrQi00n8JaOhPwHH7QVtIHBb+PJsmH19rMgsuFwiQdMFxUwwqZDqE9lsR/kkUXivjS9YCenkbMBikqdsOkPdE50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ+h3LH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZ+h3LH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F50FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764273173;
	bh=drY8D+SkbfQS7WVrWqNVqvEPb9kLpLkuaFREGCJSLgw=;
	h=To:Subject:From:Date:From;
	b=bZ+h3LH2TOVJVJ44Vg0vYYjiKbEwhIH2QSMQGbgU2SosIbhM+gB1Zjb0szXQLFqrQ
	 hwGRVFXX5xykvYRPfCIu9AccvLHP0n2GmxMXe8LrpxnFBFDOiWcRGQ1VMqW+yuleJm
	 fYNDXV7+U4F2TnfpPHXJfwonhj9DLmUNYaW4mmbB52hMvi1JqDA9BWe1EMjddevN5N
	 dddXnJtBBuu4SaH8GMu1Es9jtKLnBYNb+M3cAMopPSz861pPkLSauDta2dQq9351Y0
	 geOggYye+qH46wZ5WR9riHr7pANrBOwF7YtT2UZKpCP2EKV8puuljtklXNmsvVgig8
	 ROJcKT3+F5ihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4FD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427317358.29087.10638262608505608839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7352e1adc9fb548d656951546060d603bab4ceacc5282184085b3ac7ed5864
Date: Thu, 27 Nov 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764273173

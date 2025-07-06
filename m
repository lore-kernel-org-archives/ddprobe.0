Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B6E15E8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751844594; cv=none; b=RwitvbIm48mzqIjuXdXqYx3QnDN9cCIRqkUJQeAZp1Rp0+8psI08q2u6vg0ZCoqIm+oOzHNTFSp2cxA/MOuMbNCffD2ReFJoJ8YoAG0G5gqjFXEP1BFD8KMNcaeBEBVRn0lDims7Y+O4TsxEuZTcXPvPMa+NTvPuwXB6Dcbmq+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751844594; c=relaxed/simple;
	bh=/f6KGjZqkQLoPqOPQSIjdiex1OOWpNhBxXHCxq6oivQ=;
	h=To:Subject:From:Message-Id:Date; b=uNm0uSyA4uE/yxZg1SS49V8UOiInFnM97VGnopxvyeoyvKwCeThlgOD2/LWXsEwkQBeXUUKTDzf5xHW2vAiAT72wNsxXlDFGPbmqsLYy5UgZLSBlCS3+IkOUKOt0jzmZ5SNubfBuFMhJhxVay7dA+LSo1hCO7iaOnhbZx48Xc3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivsQlkqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivsQlkqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FD9C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751844593;
	bh=/f6KGjZqkQLoPqOPQSIjdiex1OOWpNhBxXHCxq6oivQ=;
	h=To:Subject:From:Date:From;
	b=ivsQlkqYiqa4p3+pLM1e08F0dkfBDSo8WldhT8IsxPEFlUlm9aIhz8HCK/dzSaKrc
	 b4D//bfpw+b9lhvsht3SXamSZMypUqeLjlin/ue+WixFBAzb+vevFAad2LoOSMxm4r
	 gSPXMrCLnTkM8XAtlSKLGmM7o/d3q7YscdsLlsuLu7paHTSd2NuZT9D5d7KDJV+a+U
	 XHTl2/JIvMv08NZagoLU2z9Wl8OQoizF2kvrZYjbccFszCY7nF1E80I21jZ73oD33S
	 FvmZYa9Jdnl3BK4ge8m1yjzDBDMqL/rP/bjnJxKtIkuFzE/FlGrUCuwUG7K0UCB/1/
	 zqr8GNh/XkGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E10C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184459358.29891.1508308848895676504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0cc66ce910c55ef73c2b119b2e540cfaf1fb748f3804049f575837901452d5
Date: Sun, 06 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751844593

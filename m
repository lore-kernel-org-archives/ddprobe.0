Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3FC2C11F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173094; cv=none; b=Nc4S0ek7twFcvPw5Isfh0qsk3t6RZVBwX+oRc/vlwsO+92CQhpSTzf3WpsuDjFv5Wysis/rD5pnZ4ZCUossheBj7uXeiPaI0Lc3fRXr4S7UIfR+Ezj2LeR7dcS631WJlFFLO2qS6hmkP+Lm/N31A8x9EzCVfL2YD8cbzR7iYaec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173094; c=relaxed/simple;
	bh=R4rrQFcz+DHpUHocqqA5i4vJoSpFSuEY9Y7BBQW4/Y4=;
	h=To:Subject:From:Message-Id:Date; b=EhDxs2mJwxTHkxflAEnIpoLGLdXovVMOWi7SMJeRU3ySY+dV6iF6T84FQqWbiCDKNPBaYbqOlp7Jv6NzmKCj7FF9O8igruykv/a/ZwvDFPfDqGId2YzcZjCQdvHM1SlN5/6nPAjgi/bTxL52Ig/52zp9KU/w0iPDIhTgOxq6lZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTnriEin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTnriEin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21E9C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773173093;
	bh=R4rrQFcz+DHpUHocqqA5i4vJoSpFSuEY9Y7BBQW4/Y4=;
	h=To:Subject:From:Date:From;
	b=ZTnriEinlhq3545ZERgYjy2i/rUqXEaKeUz+yhaWx17w3RHoekeoALIi2j7BTIbjK
	 4CAmqdt1pS/ir9ah5NfydjRAYB1+635tflnXb+DUhFja4IXGOizKGX1Zal6oihmHHe
	 RbxgKKvsbdBv6dZ03RrdwbpH/hLdH+GxYmMISuKDILEj+j/UUEAKxatnvK5qTUBV/e
	 KNGWdiGcefeot0yVmjRPssKBRljaSCTNL93c4bTOF2HF3bdcNrYIGycJmO/sREpyci
	 YvSk/33tIxjpIvECGW1STjScfYs90w+I4uD5AOoDR50sUGNGX8+htcR9n8U61taKXR
	 Ea7JXWChRUF7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA60FD4F2E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317309358.5356.10115744435431981217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a55b9cdb64822cb6caf3919e5bc1dd6e7163efa8fe9f74c7dda8257a3461fb
Date: Tue, 10 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773173093

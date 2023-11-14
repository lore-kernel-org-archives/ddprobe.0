Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E7F101CB
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXHnFgrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF76C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699940896;
	bh=+ocnMWam79psHkcdXwlXdzA9L5WM8zqblNYwaSSab9A=;
	h=To:Subject:From:Date:From;
	b=lXHnFgrqGC87uUVkIOmSP3VoGQLSMFos5AhdnuiFIWT4wn9qqWV4FLElAqrcoFU61
	 rL+OgYWUO7FWhlNEFvUT5Od8fjjrvmI5Y5gPai5AlKRYWEeReIr2oGQFXj/UCg9d0d
	 jgkGtQ+2UBn+pRB2txJsfXZPUBHdE2Ntv7k+D0nOEG4iVLBdP192HxpTUFus+n0L9/
	 9sjkNeHtZhDDZ/zyPZipmuamY+EcRkP9O0yk131umx9RYCekQBlAZiTCcQY/A5RR5b
	 RZ9ILRw9CEouoiyBLqKFrDcp8tvetkFWc6HKbbqAL/eFM0gwdNh+ZYjS8QM3QBsKnt
	 oXd0XWOOo1l2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBB0C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169994089638.25462.17594542974815593215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4c76b9f430ea1618d19a493aad96d4da803d2d2184062edb7cceecda8f6939
Date: Tue, 14 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699940896

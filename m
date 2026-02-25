Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDE43002D1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772057694; cv=none; b=LjM0k15J282NEKCy6KoEHqoKtAb8xKsVzvgOiDD5QBMlER5z/eWTBj4CYwUkyUwUUdctRur+tw7vJdC8zcGLFDwfZkPAHSXXEJ+D/nESxn3or21p9LgTkLps5PU97PblXltawRCizqXQeQ7h1pTbqX1nB0jvZHI7tCvn+C8xsJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772057694; c=relaxed/simple;
	bh=3scot+epHSqNVvS4obFRmR/RzFLbiysFd/UDpNTVL84=;
	h=To:Subject:From:Message-Id:Date; b=oHqKuasvldYoWR6BA2krb/mBb7SyBE268cEnYCkLDQcTHAFxXUTOk43sLrz+RpC8pHlOTYEZXNI6FtvokXOpTySfTMO/IKunlKS5t0CsaBk44swT1NNsQ/VdU421LNeJtgQAvBPTAGdsv+UIBXjiQSwh5tKuqFhMDXNO1LMonZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3Pj0Wgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3Pj0Wgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35F8C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772057693;
	bh=3scot+epHSqNVvS4obFRmR/RzFLbiysFd/UDpNTVL84=;
	h=To:Subject:From:Date:From;
	b=K3Pj0Wgbeu2X78hCYEmQZG6Y4T9lItu1eUmaAWBPFEmxFjgL75kKkLEhJtK4p4BXA
	 j7WamyUSn6/0ZURHWLzJCnlLspzb+lsc/kUG0wyx1IBAO6K+YY5ZYF3A4n70b6EGUC
	 ckYHvHA4iAqcIrC7wG2lYSB1vayj/Gg+XmTo023L3s/6fMl4CVTIN0YsPJaHxYd+kk
	 TfRHuED8JeHOSK2wT5ghhGDk6r7+PqhUbXs17BQhg+ksM9GNpJy4z+VKbYx1xWn81s
	 2iq2TN5md7Vr4WU4AgddRawz76vK/+MM6pMpK6i5lVakSdF0C2DhYXSOA4kBGIUc7y
	 f2jGsz5U0bB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A082CFD45F8
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205769362.2511.10178547269260114233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97951a16d0e165a62a940779faea5db0abc996add51e06c9510ef16e0abd52bb
Date: Wed, 25 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772057693

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1398423C8C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755335394; cv=none; b=RKyIiiOobGc498FuZQWOqPzHRxmSiQdfAcfNLkumjPB2eQtW+IhOMq7odmzx1sXK8KboRlBpkTpBfmhaoHvIg3Sn89iSTIDTnQoohFDGxaafvMUz0JpXbgJR8hwrY7i8aIVs1ymjePSjGWKosVgn3azKGqczs0LP2SrI3CjWI1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755335394; c=relaxed/simple;
	bh=kMhmKP/gd5UR2AFz1vwdO2hxFkz3jZRsypbjj+Rz9W4=;
	h=To:Subject:From:Message-Id:Date; b=CL/PMJkffJaHp3PkUCoVGkUnnUZaArIYXljg6h1Aa6YJJKmGNrA9N8oAwZwm7sNtEHdi/yrnrebt9GCQy2SGKluj18e72f9JQYfzWggZ7TBvJZ6kVi/eveiULzyFfBDe++ig8IOSeM6CYEI3gV4FD9HLhA8sagmyjQToulSe01w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqcQ8gqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqcQ8gqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F74DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755335393;
	bh=kMhmKP/gd5UR2AFz1vwdO2hxFkz3jZRsypbjj+Rz9W4=;
	h=To:Subject:From:Date:From;
	b=pqcQ8gqPyoq4yPOfVCN4YY5OXVU3oVtnuM0W7MeQSXEZHLDnTa2NhM8aVzp2h1I6Q
	 DYU0T35dqdJ/YfMgRHgss1NGk08OVjDnkNAND2qwOH156gvd/5jNWzDhfGJagY677P
	 N0c+cAY8gGoxLz+geeBd70KZn4dmS7yWTefAi7nLG1qsmids5YHZM1f2BxiT5ebDBy
	 GVh7R9LPi3RaazVFbT5R+CUI6nw+CVZ6+BV92AQUjjnVTBdFspi02JS1eIRv7/l6AM
	 eqISDnTWEzbuNmT7wkkRIfgQ2VgPkpSNqgdSLGDKiDjy50n7oz4xedhMMm7pxTMyFx
	 m0ep0EWXtOJHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC8CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533539357.9458.4744908209429725942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2c512db75ae2830691bb84cddefee2af3f3180fb6ab00913fa1302e206bdeb
Date: Sat, 16 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755335393

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477592116E7
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742380794; cv=none; b=eyU3ktTrkL7mJljYr8pO8KXbm4AuI0JnMazfwPRxoSRFFNCRqED5vO+lJsD558xe/qgxrKoRh6XoiUsLOQf3H8sD/gEyDCOkzSOkWZIOKyQ0PoM03iTKxooLOo6yHxUQ/w7tEXnZjTlO7XjmDPzVeRRet3PgBVazhTlSEQaS6wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742380794; c=relaxed/simple;
	bh=Z+QLjeSUnQOTf0WWYA2OBWo/hnYNnjHs6ll9uL0ob7g=;
	h=To:Subject:From:Message-Id:Date; b=iMZzLx16moinurCKRDFYHtT/bDVw5YKE6yo2Qad32Df7JQEAI64lX/DVjCJU4PY2uZ6G1CzmMVvhvz60qssZRe6SXzx5A2KmpkkvNY7PIuOpEZLEt7dEJhYt9w3NuI0o50kHwWt5a2yCH5tLGrKgahIjb1xxG3njsJ9TPAJ69hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbYOTZze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbYOTZze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76B5C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742380793;
	bh=Z+QLjeSUnQOTf0WWYA2OBWo/hnYNnjHs6ll9uL0ob7g=;
	h=To:Subject:From:Date:From;
	b=DbYOTZzeDp3BCjqeSLf5dMy9v8XrsgASHFQlIa+mYX+Ckgonf/ECTGsK9K9bsHBXI
	 R4U3B53kSb253ZlIirJum1xd9d5tkc0iwZ3cGrHL0uQHd7G/8dtj9cW5dFISRjF/sW
	 oV59NLikaopq3QqNey2dhgYZKcKGPvUbavi7B5zzTsShr7eHIteP/NMSgW1h0o/RH6
	 6xy9x+G7wsuc8G1kT1Rb4Lq4STBH3wrdemE6m0JXVFekHMGN9Z+oPrMzDvoSWAZTcF
	 Rva37QzbAZxBiavIXbdo0e7/LxWdWSeZEppzvYYaYoYa8gDV32k3Cco9OHX7Z46gqt
	 TNEHfa4JaqYdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3FBC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238079361.17802.14545618365222352026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad56a00803cf9ef21a08500a351f1da03ab53774c213aa45ef9142af3a87b20
Date: Wed, 19 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742380793

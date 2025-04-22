Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C36196
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745295594; cv=none; b=hT2gMrrwBQfuiRXr7EL6pyBcXAYLxqO8dBrg6gBps9lSaSdBGEc9NqzeVfSwzGY+xp1Nf+tZp1RJA6Lwu25A1bI+Gqkalzvm8qEnTNVM09voyXVyNEY/BMXcO6nQhT2NwlyE32P+M0lLeuc36ZoTiBZVfQWTvFl7Hk8ke20KCoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745295594; c=relaxed/simple;
	bh=IQ2Bq9WK1IyctIVGK1EB9GGQi+9hapGNWbRt+iA0Tdw=;
	h=To:Subject:From:Message-Id:Date; b=tziqCGnrQ1KtX797oPznvjuOI+lVfH3oKZX4LQ1l5YNy7wAAFIupuxiRHOVwSQQrVbzBZE30j4SYDMJS4KAtUeZ64ljzovbSxVu3kL/YRMz1qEqaVs7/u9MQJZzyN7l1nUadVQGrOFhmqmrOKT5QJx9Ra/mNzW8MgrCuVNamZ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwQDvw7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwQDvw7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFC7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745295593;
	bh=IQ2Bq9WK1IyctIVGK1EB9GGQi+9hapGNWbRt+iA0Tdw=;
	h=To:Subject:From:Date:From;
	b=RwQDvw7csE+dMKwshR9FSv90d5nHuEsYpL225RQ1vJhsX3kiOEt4lYFwT9zOIpawl
	 stPwqKg9htcuSMkelNsS0Ui1UUYCeHP203yqCaVXfQnd9KSiidRiDubRc6W3v3oJgB
	 AtqoveX2SpZQNOWqKPKYuXBzTZ4WMVKZ9VQdJt7bbYE1QueLzXRTwvvvYdY7DnakNc
	 Q41fcryTjqcemN8IkUegbG5g6Y+XEL0Pv+CqHJl80AEJehwTPHbcaGLkIz4SYzILC5
	 a5SCZ+0VXf314yiz9Hb7l4SMn5D0AjskWauqF3L1V+cFWhPZj3HWirSYFEly+Gnaj5
	 /gcy/Va9w1Xhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DA0C369DA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529559365.25522.863811946126471269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43f0d2b657385c67c1400676e4143bf5181e7063ac01404d44584a6602e3575
Date: Tue, 22 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745295593

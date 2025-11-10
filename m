Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427372E7F03
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762805994; cv=none; b=kNAAgM4jIHKzgPQhjCdkSHKqDtQfj+2ctCkz4LLMpZYAPu/5H1/tHB6HrHmCys+n5MurVR0HCb3xCMj1MV1baJR+t7lmlIC/9GCm2piPoyWp+V2/CeDVF0pknJqk5FeTugYQRw2XaIu/OPOPCG9ackVyUlEwniCo9VPm2s+ysDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762805994; c=relaxed/simple;
	bh=EtW+F62vTU6MzO9lwqpUI3AtPowUMcNf4PGsSmmDrLA=;
	h=To:Subject:From:Message-Id:Date; b=GWMmvrFUPiv6+vsoX5GRqgh68Pag7mjz4wdLLEQsEtcf4PYVmmyhW6+r3BbX/6QMagqlO4i7yUhZq8WSJRU6WjLueXfgW638zTVB7NP2IRugWu3hWH1SbC0abeWLUVcD1xK3dwQyMpIM0TRN5S3qH3o97GvAjflWslDw5eHMtNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mePJXPlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mePJXPlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7782C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762805993;
	bh=EtW+F62vTU6MzO9lwqpUI3AtPowUMcNf4PGsSmmDrLA=;
	h=To:Subject:From:Date:From;
	b=mePJXPlTbF8FLZiRvgO2YX/xNblcDYN3ZVbDur4ak7rdzMX4VlE+HLf7RWtPh4QWY
	 G/9L5xEZeaEYLVMhbvBTFnlE/ySXVg0mxeEGb93NFfHhbHqRa4os9NHp6hEwgllxV5
	 dE+UMtP2SAOwCTJ0fX4Suh3Y7MIg7xdwvF3qBfoTtdofwSQo/1QZ8bZojCpOuM4LmS
	 W9ALsf5QZQ2oHNrjHI9OXeszIdF0BjcTo+6klCe5RIcDckalVxPBJLytyx6vOpylQs
	 fWiZWx6QlvYEyx4Jh17DwJQrsliQ5jgO5Uzx5GXKpOaCH2Tjyk8p+zSgFXeATFDOy2
	 aCYbLSCax9/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2A5CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280599368.14262.14358483849326303149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d584d4da680507fcf91d151f537258ba0e9d8750410038d0617817660e311753
Date: Mon, 10 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762805993

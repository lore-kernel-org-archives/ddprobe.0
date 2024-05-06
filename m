Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1964D9E2
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714974143; cv=none; b=gQSXzDa+UY2UMA4T3a7E+QJXWX+9v/S6+MxYcLKk9/+EExhZc2Fj49BGq9vpY8aPkF9heTtj7Y79le+7ZF332QukwbqI8FyUo10pYVzZopwcSklBTNp/0/ag5t+QSu+QpJsdY+Z4pkayxI+xkrdzgpQbtPfdgekQl+2kvi0ngBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714974143; c=relaxed/simple;
	bh=NS29s1P0R4R6f7t5575GICvyvmUDwNttr9WbgaG9kkw=;
	h=To:Subject:From:Message-Id:Date; b=Qtf42VE18gK9HHyHCY4OIUWSwHqxRnLcADRHKp5vjF23dbxTl0w+REt12IhEGtLUT5b4hhWp6qltbiO7+aPggsMuLkSHZzFitSGcF5Iy1k1e9HSYgis6wj9wnmi9eCh9bpmZyTDB/4JBrC2016i88F6GSddn7Yks+nVcu9BlnyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULZLVLZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULZLVLZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0988C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714974142;
	bh=NS29s1P0R4R6f7t5575GICvyvmUDwNttr9WbgaG9kkw=;
	h=To:Subject:From:Date:From;
	b=ULZLVLZ3JfXU9oAAc6Efhbnu3xiF3jwTGcY6jGvN8aITz6wiqRHNzCG98Lrt3qUM+
	 L44VrJXFsa2E9Akm3KykBRWtqYD7Bu1pgOsBtl8pKS9dFhPmVfz1x0iUs5huSNLSV7
	 UoofnoxwPBLOYXeC4hjVfKAa+4ZGhXMF1oh+4wp/7YrHi7dTkLxkg4hbaO6wNrIIm4
	 rW4t+oHX9OAO5OaJuT0/0Pf4iqYURaWu85CngJhtw/9diex6Nk+ZE6Qsmy95ZByqJP
	 FsmVzrWReZ0ue9J4WlKRiFYyFYuaOH0IqDxWzc+QUX/YCkJ/CcgTNMi1BW7NJ7InAn
	 YK5eee6DeIqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDEDC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497414276.3135.11009148819817495136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c03573902586006827d7cc3cd8a219bb49cd5548d22a78990eebc6fbc512715
Date: Mon, 06 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714974142

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADFE17D6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777025854; cv=none; b=fr1T1ZVW2CJc6S5ICcRFGAV6pVmmBSwR8/AnklY6V67V18ncVCb1nKosO7PZ7aWEX9/iGPc5PST+XKoLuLNQ16G13EjlabI6CmAfPAzu616nYI7D1dub9kwXL1Ty05Wlq1auJbTep11PlWudsxVSjxhFpe37+O6ZY1lLT4+7bzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777025854; c=relaxed/simple;
	bh=qnRFyF+LuWW7Ky+KamwqPf602l5ST2E/V6xowXCO/bc=;
	h=To:Subject:From:Message-Id:Date; b=eAh9W6RMGPaB+M9sTVLWeQzYsQA1sFMLZwUGjg4h+Ey23NC+ota8gHFsYDWzS/O/iOm6qrUuqQyOwm+9YMXfGVCuIV9z7HGYwmsuPVq4ZbwfaJ/Zv43dS8qhRnYvYOlj4EXXyTnasbhxyrYCa/qP5aTX/62Cq1EbblARrJMqM5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA/H9i2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eA/H9i2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEB4C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777025853;
	bh=qnRFyF+LuWW7Ky+KamwqPf602l5ST2E/V6xowXCO/bc=;
	h=To:Subject:From:Date:From;
	b=eA/H9i2kChf/yBbC2t2k8q0s/fVQd800vziSbutoR/eR+ZXl6eSELkKcIpscUcHIh
	 NUQP+DA8af2QFpt4Lt7Aqb+aB78ImgrJqGGJT1pNDTTeZGgPr2ATtUPLC1B3l2dl8e
	 upq38trKMKPo7ZzBkGVtncqrChGoogxUiMVgeKrS50YuhNs7M0Vz3saF3XO+lqQog9
	 j/Egxa/9CJqEt5GwWLUbNgAEf/ogltjWq+LX4/iYK9KBa0VoB43I8u6bpQO0tGvhL1
	 od67NZu27Gd7OmlAgQY+UspHiLYzhS5kScJYR6uc15GFx0pLYTaxYWcUjPdZs4WRD7
	 Hm0Taoa8MY8Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC58FE51FF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702585368.15508.8468510562591330887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53808ece2411b532b6abe2396335f73cc3811f863ae9fda6e632a166eaec1727
Date: Fri, 24 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777025853

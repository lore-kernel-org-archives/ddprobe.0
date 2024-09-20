Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF3418E054
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726875954; cv=none; b=h77R5nknAUXytZVBEOpsVEnBlHwP/OoqcvfA0nWMcmsR4xSKydX4yBbi2jo1p0AIXDuiNSg5TUEuch/zTe9vnxlcrICXJiF8Rc4V/04zxC9TwTlv2ATnsMHFrfGTYGQZXBHIMRT1BVyvB1NnCdBHWw0jmJJp7Osbx4uy14wmVSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726875954; c=relaxed/simple;
	bh=Nn5K1k/xed37sg8Hbf6UiQq3KW4AHQyxkrOaDSLYxKU=;
	h=To:Subject:From:Message-Id:Date; b=GgdG7eoFz4q778REnzTmgTNiRKLPtc0p2mwzpGa73BYLdhY0uta5GBUv9zOwu0WGpZDiB8PGpacyEEuT6GkSUlerjSXqjSwjPHv+t/sjKasC6TT66TCHrgzaonLt1bnm3sojwivXtxSju4oCzknELcyMkPNiN2aqcX275G3bTMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6zVVg7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6zVVg7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A47C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726875953;
	bh=Nn5K1k/xed37sg8Hbf6UiQq3KW4AHQyxkrOaDSLYxKU=;
	h=To:Subject:From:Date:From;
	b=A6zVVg7SxOwsjCgOv+JyNvBauHK0XMnQyAE+yUyE/89HnfAqcrfLpczlwH5Wa7iq1
	 fe1f1bpMEy2IQlR24gp0zLaXVE2IjKttTSlgzAP4vvrkPX0IAc8FcvkEoU2N2UAHMI
	 KmetQ7eosYjYQwNG5TioM1MFSbIh5XUFs93Cx8yYwbwnP58DuTAsX/mgYTDhpxkJEk
	 0zmGXvf1DHr17QUZhi9rNxQnPKwmD57xGFAi/vd683RGYQfOEW84Dx5kDecw5NamtM
	 b4VtQqEN5l9xmwF9v2xPc9t6e61EYtZw/ytFEk4ZOus9ts0mb12We/IuBlDCrw1EIk
	 DcasJ/1xBHaEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D09CF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687595359.12995.590522979237624156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076c12cb386b923db516b189bee476224364a9a17e74356f02d43edf9f5767dd
Date: Fri, 20 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726875953

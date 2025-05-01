Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB62144CF
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746124794; cv=none; b=GFar1MD1ME5doffdubpeHQz+9mG+ammRrTdejUJG2rZi1QWaDP5INOWYBFu6VWTZTHsxp00XFOQUiP31GYNaoPc0Fz4DWoTH9lRGyhm6+iof+1XYlq7Vf0QNpbYlvlkK9rbq9X8TLMqn0D3uTtlzJb1jDTAzwoms+/IqQLV9BIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746124794; c=relaxed/simple;
	bh=4S5QqD0RNb9mgTh2avU4z4XwX5QFEIz05uj1p02LFVQ=;
	h=To:Subject:From:Message-Id:Date; b=VdpFXZjARBQ2PK+gQM2qGkB/78zkNST6qxd3pG6VvETMSC25pb9Ak6CpvTn1qh0EAMB0A7Rf4XPN0QRWVVmPvev9YbscRxUQs3wgnVZFFe70mXECTCULiZmFljPPsD/xfSNBhAlYJdx0I9cvxH0J+t2nkVT0o9VqeX399CCd/nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REshtgZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REshtgZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D59AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746124793;
	bh=4S5QqD0RNb9mgTh2avU4z4XwX5QFEIz05uj1p02LFVQ=;
	h=To:Subject:From:Date:From;
	b=REshtgZJSLuVWJrOlL0rFvuNleETCz0nSw3ty39V/2UUsCCvYK9fZtHIinxfILlR6
	 rY6BM6oZlPTfQsTGQ5lM6oLXsthnFSIBbPF+Ceo4xQRVJl8HeHa6pai5GeAu1cdSo0
	 TD3wTvSenAYSuRt7Ff0jz6hsIlCRmmrR7ODgAO42LJyHw3gS/Jfrs3uVbX1zlAqtIK
	 Lu+zPkmR25aq7nRODJPX4Hv884UWy3k0Eo9rnrdyvYPbiElTaSJ79tOTnU6A6QzKL7
	 3ClCJg5ZXK5Nd/Ihl4nEUfENKnVcZJWr2MNfOI0X44hQEMWizp6Gh73FRGEr4Bg5Qe
	 bxYf4AlcCmWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E39EC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612479357.6846.7479364331263119497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61eb78c042d482e01d164443eacf31fd949c26b1ec61645cbd08aa4c8e78503
Date: Thu, 01 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746124793

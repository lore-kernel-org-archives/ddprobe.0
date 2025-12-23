Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE6B2FE078
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766482434; cv=none; b=Bz6yDoaobytCtf+2Lb0U0tKCv6iYzv+6t1sUYntzG+amdkBRgJX9X0rM533c2SogHh7NGzIfqL3Jhybvb1d5fMDTdQcaz6QTaCcmOyIBzLQ7wumVzEO+GU/d3OLgjM61xUtSNasf8NVCUeA7XtrRGCofpPonS9pybuGeQBJ/qsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766482434; c=relaxed/simple;
	bh=/tVG2Ni0stuYLR7wNnU3RsN5y7KbFZ+v+j9JxPVTi1I=;
	h=To:Subject:From:Message-Id:Date; b=hQp3CmleVREKP88QiFL4mOTXxGXe0LcwOwjkjjXhFI/9qUBgA63O/E1pO4X/pM4D2f+TPCJnWqNUL+AGVSe4CD6Wy5MS8pGJbFaJrpxeHRCb43hahB25FDVieGyK/IM1dNTGnG0j5tFVcmXZq7g4hQUdYWt71yge8RSeD2ZjnKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkJZyGSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkJZyGSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1405C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766482433;
	bh=/tVG2Ni0stuYLR7wNnU3RsN5y7KbFZ+v+j9JxPVTi1I=;
	h=To:Subject:From:Date:From;
	b=MkJZyGSOQ/T9M2+0zQBxGiPU3wp54ps0uHUXFWvBwT0KOfxl2jA4TYYnZ2QENKNm8
	 O+mRyURH0INy0t2elVZHSQs+TYpFD8eTHEb5C8jDekfHuMuAiXg0WF41yMgnHguj9R
	 dYhSulhLK1JhJ7AS8Q6AAlVbdIYCt7tY0tlpt3i3w9quBSj70HLYCLNZxvPsKZ3/+D
	 Yhp2wkvrx1jpI+B6bXDfWJDawu4aGtGW/wKXm7tIGDpTs4OK14Aou9TzYbJdzNw/HS
	 TEStVt6IdP7tUX0VShaHfAI3rgkYoCn5tdRQu2ci9VErvkuCpDPs515dJGunPltBnc
	 O3Ub3tGhVaD7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DBE6F077
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648243357.12621.693064170654433100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04eebd6c09684089e594e145eb7150d997416b103c786a4df645b1882d7aa3e
Date: Tue, 23 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766482433

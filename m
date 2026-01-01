Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2470D285050
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767266634; cv=none; b=azCUETar/z4Mui/ZWLCUAU+CUCERaYuM+GxOwzUWuIxh64t5ean5DiDW8RtebCpN8YxDnIGnoVV/kXvhFtLzQO68UudI2Mo3trxvWP2dPg1BczbhLlYYehpF+iJiE4C1Zj8O8qarVY2cn8O7TEkXwPSN49Nq5rPYLFes3cXquG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767266634; c=relaxed/simple;
	bh=j0iYGeuDUp6uneBHCQs3b6/sw+FXVTnD4gFHejNlvQE=;
	h=To:Subject:From:Message-Id:Date; b=uUJywtZDkRHLVxK2Q6Qr5qdxHWx8Txu9v0Ix/Gp4j55zR/zp0O0dtDNVMOdUVJ8eroa3D/n+kX5G13oXXH+mAZN9vNaWY3B4zieCHpbImDmCVzB8qQr+b/Nr2A5liXJJ8aL/Gmzq+oJXUnC/kpKrabTW4VOuHguMIbE3occG7ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZUXrMTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZUXrMTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53DFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767266633;
	bh=j0iYGeuDUp6uneBHCQs3b6/sw+FXVTnD4gFHejNlvQE=;
	h=To:Subject:From:Date:From;
	b=BZUXrMTVVUXyUUQR14SIq7x6Kajqh3qvUKygLBzRT/nnty5Bxr1b7A4BmB6O+Aumc
	 19o38W82JbpiTvF26g/Iu4M57Gtx2wYbj96ixAdh76zyS/aHbC8W2dqUTOv2eD54YA
	 DZ89jj6MCvLXy1wMKshZkvBTAxMXfaneWIQx+Q4W9r0TsE0ZwSJNGM9L8nkGq51fXd
	 e3jw0LrcJp0ZI5a99p0UBLqfC/7+1qh7A29EeLDwF1bmhChyZSXqnsfDB3oHrbA7NK
	 pACWjkArfLZPzNtC7DJ2LuO0i4TRh5MsjbSXrVEtg2YuK60jVoF0bsbz5kB5L5357D
	 Wg+UQCYf+LHBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E58EEB57E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726663357.29827.4216644892121116135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08c0c9988ca060ab75bd62ba026b533d1d83a7322787d71083507493571be00
Date: Thu, 01 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767266633

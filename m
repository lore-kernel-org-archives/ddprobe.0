Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1381D36D507
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770734034; cv=none; b=j6cxjkBCwmBocQ+1LitpH/iUrOHvteBw6lF3a2qXdMSFQzkLkrHqRFxLATsAgPmv1J7Hy8MxzntnHHYrpvprLEhg8bmSSP+GY6g8+qbz4GLtdS2Aoj9d8r0f4/TQYK4Z0BNG/mgkznIz/Af+gUq/WkBkpno29MHNAXGNGag6Yzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770734034; c=relaxed/simple;
	bh=XziRnbMNDuymlbuUorXnIimcDxdQIFI+kNtPLC1Zdho=;
	h=To:Subject:From:Message-Id:Date; b=NWxzlVsJ/WlE4j+4XP5Tepzhkz/NC2HQV1Xq2FGCbBmXC0kW3ubUv1KOgVm0RhwuC5xU73Mk1XBfP2fjQPlDA4iQysxr3IWRJdTGGbvZOnnj+Qn4P2ge1Hy4KmvkQZ5/LUoYlpmAVXeAT1fzMLOvRXLkjxD0SeDDt0sQW11wymg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Usx8ETMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Usx8ETMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8F5C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770734033;
	bh=XziRnbMNDuymlbuUorXnIimcDxdQIFI+kNtPLC1Zdho=;
	h=To:Subject:From:Date:From;
	b=Usx8ETMJ+epVlk3+T8/Dcmv7mC1AXtKVeXEle5kpyKhXR8lakl6v0pdO6bsg0sHFN
	 xtvgv3VfuDyXaabu/NI14m+fg2k7/MCWx9Q5s5D5JP9v7VE738ZybAHEsudYye9lKe
	 zpyHPgHIkdSoxCcGmY3ad36SPrl4wnJF15XEAQLDmvYX8683DPxpDofQJYoK8hloNP
	 trCXvyF7ICCYh9w6VGYa/Zz8HXFxKiIIXi1NnNim/psfrgaXZHtpL05dVH8SlSbBlY
	 uEeWqtJL9xoXzY6DDxhErg8F6SAa1nlBR76578oBQxLQ8MVmVlJdJFRZuXjl3IDQFf
	 JPG2AaF1ZWkIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CC6EA8122
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073403361.10024.12678175219405915773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e586f037eafe427ac5b0ee393ec525344f83d5448c4de52f5d91270c8e58de8d
Date: Tue, 10 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770734033

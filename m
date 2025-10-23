Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EEF207DE2
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761207594; cv=none; b=ZySevved0PkgKLOAC7k9apZKls/559WqZwkqOkXg+lulVtqfRRSIAa2FvI0iaDRRiFFm7LM2bxfuyXspBo5M5Mkp1u731hx+v/m5FazU1eC8neqi0DYLHmrOCuoI4H7p4KwHqtJPSPvby5xh659XyvflHJmSsrNG8t3k4EPRkAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761207594; c=relaxed/simple;
	bh=kNq1Y5HnAtha0pf9CYVUk85J6MgCqg/hHfkdeCjDAWY=;
	h=To:Subject:From:Message-Id:Date; b=fNsRRspk4BYjHDnm6ZI8FnnLTQ+9fzPd+BtfnCNrkGN/4yrFP65uVRWXQx2dN/TWMglcIOtl/8rmV9ot7gW5I0jzZYCvzX5XBVa/k9yxBMyx8EFYsxD+A1DuFt10O8nfVHM4myqyOLpHp1hPo6c06FewPp9NG6o1XbpcymD1F7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pY0atUGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pY0atUGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C6CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761207593;
	bh=kNq1Y5HnAtha0pf9CYVUk85J6MgCqg/hHfkdeCjDAWY=;
	h=To:Subject:From:Date:From;
	b=pY0atUGcHzdE0mC9ZMwkcNN2+S5+APkDgy3WGfYC8oWeDoGs5D7rgxmluczU8axL8
	 akGjmYuzrdyyD359TTKZDHQORjwyhdOfJiCR5HdwkxxyKTe0kMZe1GVPx5xRMUvnC+
	 PmtcVonVLDx2w3fIJFaqJPTrOldOpRXMWrbYkpMkXNNZJHCk/ctCaabXzrP04JJGC2
	 Ww/wKVZMxlzoBOj4A4ZJcw7P9AvrxcJDoVFnJ91KtFhznwobS9VNyPj0mRxelPgeTz
	 oghmmiZ0V4YDktY+8EkVn6+aO/sw7uWRtPIgTj8sVha779ysrp+X4Kj/wbUDIFysCS
	 t3ed0Uq+2fwPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A54CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120759358.3491.8328868879747190045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14208e957a40774908e579f2dc13e56013482b2290a7982b719d33280cbfb3b
Date: Thu, 23 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761207593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDB8C2FD
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712905763; cv=none; b=fuHe0KsVtrfwvqhkXibo/frsrwEpg/fsTOhYhGLK0DzNisrI87S7dcDcwUa8X2VGNqiuMdMJ3hParsAAXXJwv3pMk94To3KAY8J3RMU5hdz7Fdw/eFV8XvGV/8IHdllH8cIVugpIIMvRXSO5XTWVq/NRSKhPyZjWtzD8Bl83GXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712905763; c=relaxed/simple;
	bh=nkI0mZYoaXNdYDLbC0w8uPnp319Dg1WXtwG6LAH7RFo=;
	h=To:Subject:From:Message-Id:Date; b=o/b1pdfwg7r+wFdKxsJuh00bNcB6bWid1+uw36qWJJxSmFSczWZ5A1RbC8sJYcJLLdRm8gdar5URYkxI8nbptOJ6/YF28Nonn86sDysnkN4fw7czFll3ycaGujlK/OjLhIemIvcYoP3j55bRV7by7NnFErak2EkWxHPdij5DFlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgjYLGDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgjYLGDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90E0C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712905762;
	bh=nkI0mZYoaXNdYDLbC0w8uPnp319Dg1WXtwG6LAH7RFo=;
	h=To:Subject:From:Date:From;
	b=kgjYLGDhTsjbDfE7PK4J9bOKonMSyiKOM30Ch1WdIpQYmpYkCaouRv8cF/+EWXLVQ
	 rupk0LMvknc3v0vHubgZO2uNioXgpCshfMxwxqNVa3ZEYTdnojpGwM3v54X4PvleTp
	 MhGxSrcquW1xEuGZbvQc04/tGqS88Fv+Of9SF1Qa69LBefjJwQPp36aS1VcRtV+Duj
	 8UI3JH3Jph0clFFxPBbwmZXHtoCBf6CgMv1rVjVm/BmhgACdLKXTA5pFZEdQUlywuu
	 0s5RPW8ekU55ijVFbY+aArurLPgffVzpL4pVnJMQKk2Nu5DSdHr4MDRnxvUWECHTGr
	 mWYTWr25JhMsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC27C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 07:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290576276.9058.6594006106737044778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc930791c95977d41868642f4055455e00b65b1abe8c0583f88144732d4a3db3
Date: Fri, 12 Apr 2024 07:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712905762

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675EC5733E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786917634; cv=none; b=rsWb4tyaHM1U7p9YP00cu+1+9s0qcmSS/1YPczh04dVktphhhv73u1ZyunYDUGrs9MwlLHRS8P8pSpHcm4kJRTRbLbMsrOQUSVC2TqQ9uQ98w3eOralZGfyne0j9h9+LlmoQQa/m5XSZQAB+JD2gNwqT7OnMwMSngVY8YtSl3Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786917634; c=relaxed/simple;
	bh=CJMAplF5APGK1fC3wbVhc+EI+zQilrStK1VtIU9Lq1Y=;
	h=To:Subject:From:Message-Id:Date; b=gBeBRUmkzbpDaq0Ink4tlzKvURdTZWUPdOn/f0r86mrs1dgNWZUkexnrUrNfrluJRlggzkQztyuKz4xjVIMEf2BgroZf3HDP/XKT8Z8XhP6D2IOYeWktMg0vM+QT2PmKkrtc/mDzLtX0xE2W4iu3s2DFYjRVz7yc5wyabC4nwLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4MxRInu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4MxRInu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F4EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786917633;
	bh=CJMAplF5APGK1fC3wbVhc+EI+zQilrStK1VtIU9Lq1Y=;
	h=To:Subject:From:Date:From;
	b=n4MxRInueQkBa3D5C8oHljb4kzjnY1iRvNOiTaN9YDddFwyQ9jaEz9Sr2ZU8lf963
	 vNV2JmKucg6jVBsBioLD+ddFtdtJ9xNyyyr2T6dy/tnkkPZMoGiuQj0DdzpHnKpeo/
	 ZyCV+UCRF/l1hn11xPBBnD18p2N4xcYIFFJNTskPcp+nmoj6kKA6hjtUWvSdisT5LT
	 Fo0T81QYCLHVLurK1e4EjtqlKbbZkK7E4IUTcfWgNeW+IWQNBz4UyGLEuD0Zic280C
	 c4VN4RMPzBKyUFYiG+lbU23b8Gxt+ApiVrEJ8aYMD3Jx3xamFZ7JDs2uYnzLi1Hzec
	 YbPmQuWpm0hHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90C4C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691763372.28590.9681975691803609451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734af5f3391bffe68777908152e0aa56e044565cedde82fdc5682084e4eb6108
Date: Sun, 16 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786917633

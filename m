Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2786A2853EE
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766802834; cv=none; b=VoPy9A0jag3Pqp7Y9m80IDPjF275feahx08Ffz2nFlgeT5iRoBH8wLSsv5o8WEStAHK5gA3j7WZaU6ezNgEwvIocxm3pKWm3GKwr5+X9JQHWVU9v969F0ED15BwaFbr8mRfg6rBFqyRWqHrOzjhZL29d9W/Z1w5iJSmKaJx23y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766802834; c=relaxed/simple;
	bh=eGBXeLvvCaM8tmSETn/1C3iW80PzopITqTKcCC6mfek=;
	h=To:Subject:From:Message-Id:Date; b=mteOBbK4Bu5aD4l8wgvRl8cGmFdpGDykxnfbShN3vdI86Slsh07i8Hd6GbWHT/XgC7SvKfZzyB3NqMRnH6uSflNmZuu17E7+kHOitUIQtfEp5qdZxyoqmI5E+RTmW0Hl0ISYQ/Yne/cEGq1PZ5hmbZYl80QJWuY4zG8z06cMIgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqlc3+3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqlc3+3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8755C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766802833;
	bh=eGBXeLvvCaM8tmSETn/1C3iW80PzopITqTKcCC6mfek=;
	h=To:Subject:From:Date:From;
	b=kqlc3+3PqhLVseK0wUvGZmgaiwOv0J1vHQqVNhz5laYUof7bbUTEmazTFenQ+yrNi
	 OrGiMqyf7+gHgoGUQCyLcWW3kV6mibL4kGf+vLJQVqS0dvCxAnjbowe5qa7C8/gW6/
	 3p9q/P9uFgI0ObFEVvDESM8IdzLoceXCwE+TXdum+1aKkZO7gS/gxeKhV2MhIzKKWF
	 wLVjDxNLQaFwKhw5oZXFK8r0FIS6c8COSGgHypunIfu1VLEXowfw9CXHWPAZZcWZY3
	 VacimjU+CwbUseVXIT+t+nMfYW7ZLX8HgdsCSFOlcqAGTZNrKaXrMDf04kUmZ/43xo
	 SUJFOetBzlgaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9667AE8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680283358.7432.14946404736559497322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8441e50a3fad88edb80abc6c3d3339dc27190cd161cf61d9d182655c4e577e2
Date: Sat, 27 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766802833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1721A34D911
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774634094; cv=none; b=H5PRrP5Gi5ux0Lo+ph2fRDq2eyACEz5V3Inq8zBSWsGhbf5rYOsUsDu2ICAn6Hqq5MJiivfplJk8mzmbW20WabVDxwv/jo6Yjphct7DnwPKPdIcgTf3Wp8mEa+dORIpivvyQxIXkZouazeUejV5B3cQ8YH4bkQolAzj1I/IYL9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774634094; c=relaxed/simple;
	bh=/b9jVapaefy3VBrWsbRr9if9/TRGp5m+HGrTCf8bSN0=;
	h=To:Subject:From:Message-Id:Date; b=QM/NsCDS8fCV1cQwiJzvgh+NLAB6PkS53Apkme4BGjH2/QraTrIDV8sn/8/lMI7FtJE8omYQnHviHhIcGnGxP0+qPOXEXyQSGv8YWpmOM8/sPmR0C5I8ZBR8pWBhK9LuyIBLfxKYKZYs6p+2jCxrGtwSaqoUhbkRlXMp/f4uV6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mw0Mc/fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mw0Mc/fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A977CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774634093;
	bh=/b9jVapaefy3VBrWsbRr9if9/TRGp5m+HGrTCf8bSN0=;
	h=To:Subject:From:Date:From;
	b=Mw0Mc/fsxCsOEOpL/Sr7nHzP5gg1rY8wcT8Sj3qTPWG9+zbfLdhL6ccx2RdBQ4P3g
	 Xadk/OMjoDQnGiTNMM4c4LKNETzzRyNfVqPXHNUYmv/xmaDYPBgEdUJZHz8l08wf6t
	 OTkzMaCGVlPL+IgBscs/V6XBxQoSvjDbdZ3m4uhnfHnkVlIeHTxpk+IAYe0DL0zRfa
	 ewBqHr5zlguBHMFUu72T1HN+kg2IRr/9KCRCzxpc9eJyudjEisCF1ey9I9vICHQGPJ
	 reFwhU9eDD1mfGnEHhusw69gxootx5L6eNYNCeUhyWA0YFSG1nHw5rJyjg/GuPeiko
	 9elB5TuVQyRcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A38010F2862
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463409359.32192.4823225153486873871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1abf51c4a1356522dc5f5b2f8de2fbe13ad918328848fb69600212895b99c9
Date: Fri, 27 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774634093

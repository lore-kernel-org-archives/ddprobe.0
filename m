Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03722315D58
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773685494; cv=none; b=PcN00buENdPPMm2n838MjZ9BCuR6TVG+8TF/hBI8PasE5n2OuwV+J4eX2++7WLPLl8FxSRavYB6g23Mw6F3WeE6KMYVMY3ZcQLfDqel4o3gMpEPzyrd+gi3pkT6Xr74OU5jyfTEGZRj5WFSXm66049HYH+eWN+H66C/CT/Hdb+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773685494; c=relaxed/simple;
	bh=efYJmoXc1y1AhoRmLYY7aMtiv3PngR4oLgSi6X/fneQ=;
	h=To:Subject:From:Message-Id:Date; b=tVz5QAQR+udq06xbwGpx4ulkJmk4CDSPA0ojhLCDn7m75jXdPO2UuJgFRl45Pr85YxkZp0WnW9Yp/xn5tRU0W2VNjv5ulFJnY5JObLVqHihuvcnHS28/FHSli1BqMYQZekwtEHZvwwaCwmdXcfnaDnBgnywE/o4a3EAaTpjJ8B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHjxqOYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHjxqOYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED77C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773685493;
	bh=efYJmoXc1y1AhoRmLYY7aMtiv3PngR4oLgSi6X/fneQ=;
	h=To:Subject:From:Date:From;
	b=nHjxqOYhPnBCM+cD/hvcdWIzowLE3ZdYBLGdeRGFo4An8qirNoE+62tV5sXoKIBJF
	 tX/Sy4jXHaqfnBRnW/o/IumkJR9XKAwLc1oUxZbSt3iKNgpi2/+9bapx8jip2tK/K6
	 yVajDJAxRv/16fEZuSELn0S5fGegdbYDvB9zTNfyBkAkqO7PuSFWDJBUmhmFu4e3Nl
	 AGCsP6OsFQlLhG6Mn2t4NQVdaRHoNZNj99zzzDCl365PziLpu1gfiTomBZb4i0xA3p
	 Y0SwrMlOdp2vK/9a6mxB8/ktka8BoQs6GbcijtstWusYIMSN3p+aUP+GQNicPk5FGp
	 KNpx/QBT8Sfgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA0F53D81
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368549358.19158.11817199272956231961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70cc283e10493d4e477cc1035d65f89ad2b478fb037f96d1fbd347a0fdb0758
Date: Mon, 16 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773685493

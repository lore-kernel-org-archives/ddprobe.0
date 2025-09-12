Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8FB30BBBD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757695194; cv=none; b=olS4bZpbl1OQVM661qq7ZNICI4LqrOzu+E5vRUSYibmMURka74QSbIPo0fBRcwG4QH1iZAazInCmxliX6CxdlJGbh1n7ybpmi88BuYi/Xd38krnF6ROZ5sWDEFPA8FSvr9Sn/QczDaOffhXHd/a6rdlpw+hS2LwDPP6RgO+p0+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757695194; c=relaxed/simple;
	bh=m3Qqu69B7FdRIkHhYbYCFlMuUrx6547XUWXO+S+8H1g=;
	h=To:Subject:From:Message-Id:Date; b=VvfMFQrLOT4vpNH4iWxRrSuJjcCbjqe5015lzqhkG/S70ZYD7LlSps3WkFXFIAfPK1HJhHK1cL34HxJy1mmgLa/yJnuH5U7jaryF3kbL1QjuzgpO2YzhdeliF8vZrEXT0xS6NZRad2hm40y9HLklzyeuklRD7wMSLB3Naj5RqFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLgri0WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLgri0WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF5BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757695193;
	bh=m3Qqu69B7FdRIkHhYbYCFlMuUrx6547XUWXO+S+8H1g=;
	h=To:Subject:From:Date:From;
	b=fLgri0WBsQBDkGtKjJjPgcQQXsviZ6fTCSEdLpYMEhd31qZ03U4XLNA/Z29KZJxW4
	 moRR3003K+mA1HDVNLViZiqBfBMq9bIjUS2x+8nTXXv8s2KnLy8yZwlnz2hI5URWmZ
	 y0eEyT/2URkXedX0/qF8FysWf2Hd2k1eYvHVB8WB0r76p6ioDiw0BrP6uHOJ69VShn
	 YB6szLkfmkJBi9TvwII3aFQvte8Qc6SCwcKam1O/BY9wWEZfV+4q2biXtxH35R0mXF
	 2ekTBdhv3u3ZBWsgRLfgv4u3GHwNPtOtg16JLpBAPIQ/nyHViqFvmhmEknh5Aka5ki
	 XSlzb42zDuPrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB35CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769519357.25518.12381714348604732538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea799821bb308ba279fbe17922486ea97b7e7983d8f52a519d7cbb671f26dcaa
Date: Fri, 12 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757695193

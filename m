Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E371D223708
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774529694; cv=none; b=ToodpcuP0eh4n8PKJKDF3sn0VNO5Bw1kUkJrY1/rHPH1Jh31CAWAiN3kR5X3SMdP2o7nhp8hLk1cAbmZD20xkYogp9twI4Doz11boga97nVIs3OoddcGDLqFyjvhEPx5sDrhYwry979GKSLE7NIhbgqjAM754eJJK1uYDrGIARA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774529694; c=relaxed/simple;
	bh=qDuWEe9+nrKd9GZgGLIUG28kEYhH9CNW21lOCQndpqY=;
	h=To:Subject:From:Message-Id:Date; b=TE5G8hMlB/Bq4sbhFX6KJ6N4J3hF/xoMRy5od6VNGzIU/LGVVTdEn7eXGkOmkMptGDIK1dkZbDtmUVA/L/MA9FiySU9h9X2wuolVQStZMaI+ITogx5/n53uqyTc8+RDuiTdvzrGvUv0DNQTrH+48JB3H2cnE004BzrljPJCa9OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD1YDpyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD1YDpyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99524C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774529693;
	bh=qDuWEe9+nrKd9GZgGLIUG28kEYhH9CNW21lOCQndpqY=;
	h=To:Subject:From:Date:From;
	b=iD1YDpyzWHCyxg2HSPMRsVsHSrDTcf8Xnxrc8DWjGYkAuJcO7o3DF4zcOQvCDRiip
	 o+K5yFIsNBNQNRzr3YmQbKHYbsT3WZnXmJxFtTAy/JnT0cfgjDJNaN7xVj0RiBjKRI
	 WMRS1BJgpAkrJPd8agUYHt4tP5que62eL5wwJy3/lTRM6x+/Wy4QhJdiUa2wyW2pLn
	 7zyNWn9ii9u7V9gQAjFCPJBEIa74aHC1NguAK+av/zB80ltt9VVncvY0CsdeAUE4nc
	 9kzM/rhm0qUszzbQop5X29FZGxeMONshFVMlQvt6AwsEq+MWowpygwWwKUpGwQrjhz
	 ckyI7Qg1o2adg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190C10A62C4
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452969358.6068.1299080509068416637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538f18f29b6a27644d7a8f74dea90b6d114a14a67088cd94717623a43bc516e2
Date: Thu, 26 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774529693

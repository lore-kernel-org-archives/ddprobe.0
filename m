Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB7E1E4BE
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754714994; cv=none; b=nYo3X1Tpmy7W6JCV8fOpHLFdaBAlOwnn45YCAKWrDLky5ebyIaRogsZjwLo1DGZJV5kk0dOQvCWbzk2J78eupaCEXpF3ueRsCxpZLP5u4bwLfsoJMEM8effM8FRQao+GPoIcchCa7KXdxoOyad8opcukF0FfF9mM4TKFNvqyUGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754714994; c=relaxed/simple;
	bh=92o0GyXQaZnS2Lz0LEX8EAvo/Jbj5Z2G9o4iX2s9QoI=;
	h=To:Subject:From:Message-Id:Date; b=qHMbKF17ZecSySaJlXDm3qjfEt0lWc3tzOLQBG9xESeRgM89/0+AJamCLwUWT0WdAjlNVJ4yGAS1UDda5YQty+nU8f4+2xIYX+PM588K8t2XV5MQ76GOgkPjD14V6fo/yJez4JC1r6FPizehcs9DAK5tGuGu1mvCUDiNMwSrXIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7jHHc1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7jHHc1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF5CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754714993;
	bh=92o0GyXQaZnS2Lz0LEX8EAvo/Jbj5Z2G9o4iX2s9QoI=;
	h=To:Subject:From:Date:From;
	b=b7jHHc1XGIC7nEnqFgDChY3Prg9AFxYQFGveRFpVtkQUF1UwDbklDxxb4VMHk/7zn
	 G+PbIGopEWRV+BVIZVS8U6SLIoNH7TBCVXDewHQKgYeoDhajQLxkhYF5aa+aYDYM73
	 hJqa+KPBmawUZSl9fuhhgnmPsqmay+M9p9YWH9lAHYBP1mrO611F99NDHusLjutKbE
	 m98tu+wDFe/sFRZkGO3EoWN2bLNtX/xnPpeGoRIJH+wnGnFUwOk8KJsl4MPOMTyHaZ
	 WqUKShYYTXy4YdG+UqN5LbuL2mYaseVvNMqTIDbxporaVYZoPjHgxG/2TuN9cW5siv
	 TFF7WWDgDmcJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFFC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471499357.3209.5229871765274717695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99d71f9fcef7a47f3158f21244a13f3227e92cd39975d0f0f76597aecbea196
Date: Sat, 09 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754714993

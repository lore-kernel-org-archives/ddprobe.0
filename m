Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4155D1EDA0F
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781367394; cv=none; b=PdYHZ2040350efAQPjWz1ROKMg/GmbqKEXrt+nj+2JISH8dd4UhIUQbW1xxM3mxyENG+fK7yvg926YkHw+6IlexWirV+/7Ci8rs/ZK0q+pnSu2wT6qNduN1bV/F1aRHkd02DLuAZL5CosAf9wnF4ePmMFsZju4crNJFRYz7AAd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781367394; c=relaxed/simple;
	bh=a/CpOHuN4yTIViRjvDZVwVG2EAgYldntAoRWPXhJrK0=;
	h=To:Subject:From:Message-Id:Date; b=pyxKpd4LWUnOEUjZcBKbzApXPY6PRuDeEou63GNTn/QZCpBdwbCDZktwVp398bYjuuq/5bPP4mWHbrL+Y/PRmZvAQiSVepyuL5to8F27appuiQdh++L7BZdJgbOOB+IAIIv9ZjLa7wRrrMeRaQQw97FGi+K2Ostq9NrPWivvyGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwx9Bhex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwx9Bhex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEBEC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781367393;
	bh=a/CpOHuN4yTIViRjvDZVwVG2EAgYldntAoRWPXhJrK0=;
	h=To:Subject:From:Date:From;
	b=fwx9Bhex0D3171zM5TMzP9EMPtvUaULuWlLyQQzZMC2atwBTbfzxIGO8zht5di5bK
	 gKucNEjwIGcJI194aYldVAptKIc1LwSXyAZhRFqahG/HHYjV0tQtY/qphCzAE2BNJ2
	 TXaHnEpvKh8bXfvGrWr/APOkncu92o8Gr1u3kH6vc2YE35XtYUf7GmO/gui9C/j/Mn
	 qUP9cA8ZLPoZa9DumHjFkbvclwfv4OEfyul6Jx3Htx6GqWA3QDFM6NgakAljC9zizs
	 Xzabx8q1xn5GS471Z081Gv8y/uvNIv/cZ9YzoaHC/8cr5n3Yuq1ku0WHzGHjGeh/i9
	 C4EM538JDGnIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17BFCD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136739371.19273.6993890744117186110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5dbd160b17bb254375d9955381e3a5747727afe20723527d2ed31d5b04c57d6
Date: Sat, 13 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781367393

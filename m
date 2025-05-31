Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B1139D
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748720994; cv=none; b=RNj4N6twDy0CPfjhgAovxDF6BFl5P5T7yfUc3cKuhmvys75c6tMJAxdDuvYShl0yvp/7ZqSCwv3/9VOGB1s/t0tbiR3a5RbOyJr0Y0oTsPUTBAc4HARUeSWqKT3qtViA0WKMdHbPZf1NEl4zuUsy1sqbtjxGzSK9+W0UgTF0q8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748720994; c=relaxed/simple;
	bh=ZmElXXYKHepZApPDFndEsVY+QP+vo9kqq8d/YLrgkmg=;
	h=To:Subject:From:Message-Id:Date; b=TlfrNsw3U7q3JUBqwhZ7NYqwyAysi/Fx50dCDrKl0yHNyIAnLTIIXVwqjzhhl1UU3zRlE+6kOySjuR2t9YH2GA/TZNKvKG81bNpH8LpQcq7PzqVJb3/wEl9TRpVPBY5t3ZerlQi60iDlPFh/0NxQ5aMQglts3uonE3opq8dBOEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCat2Ik2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCat2Ik2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748720993;
	bh=ZmElXXYKHepZApPDFndEsVY+QP+vo9kqq8d/YLrgkmg=;
	h=To:Subject:From:Date:From;
	b=UCat2Ik2zsw4i2S2QpJl3SvujSCJYXBFE1/xktC/FXJzMs7Pw5Zv9wB5XcWP/k7+z
	 /7qnH9RYlcO8btkgz4Bg+brBTmKDrT8KfT/7zd9G9ufStujbbezFys/eS+BU679pSB
	 9WyuXF6vdVqZgmL4tilyD4zLH95mEi+W9voZ8U9jS6nIKLdnL5G55rgAC/NCDf1k+8
	 TEbPfwkd9sRTT0jtVCshfZt1SA3RCepQcNv01wx/mKing1sh3YVJ6BEstQRaDpDJoF
	 6NXu0K2AhjfVoNSwdRK6FvXIAY2Ed8Kw7USxChUWQgaVZSim6WK37YJlcv4IiU4p9n
	 YBVsMJivGTi7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97BC5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872099358.5504.18089621121066904474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa905f3e4b284a7cacc54048d28409ef948737398bff2184607ced2da4a9b1c
Date: Sat, 31 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748720993

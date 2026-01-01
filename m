Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CD21CAA6C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767237834; cv=none; b=MH9h+ktoyFv39sLXkDVM+EwGaI59GkawDfcYd33AZSJ4Sv1c/T9MCBbv+8RpuzxD1WPzsTvsq15VKCKvFy6dFYbib4S/dXgTVepRzOnZ08D8FgMFosv30Frqo6jAIjkbgeCXMCVz4tngvi0J1YDKfa4baaKzuNnBm5nE1NiCsHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767237834; c=relaxed/simple;
	bh=mk79JjbshNj95LzgrUjFtlEUAHwgy8ImqsfsRcGwGmI=;
	h=To:Subject:From:Message-Id:Date; b=REsso2Pd6Yxcsdj5kjDVe9GcDGEAxNRMQJuF2U2pjc3xT6Tl5w6DNe1IZVeYM2Pj/yUAEspfYPL9c1tB9W9gWMCcFhT+Rky55wvuaWXTNf3xOTNSTscVIaF3I9ufP9ZlLdekNUSjINTD9eOsfk/S3MwGDtIpaUhRoEuAyrLQkUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAVyU9cQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAVyU9cQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A034FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767237833;
	bh=mk79JjbshNj95LzgrUjFtlEUAHwgy8ImqsfsRcGwGmI=;
	h=To:Subject:From:Date:From;
	b=VAVyU9cQMic1owbDb2ZQemxn8PVZqcyl9aQJZL155L76NLfTfsGhhUB2/Yx+Qx2kv
	 uP4Rj2qlCpns2mZ/uZt8BqPPRVAvLKSOB7ljGMyJJYtk1ATus85uoYkEhbu512i/qB
	 GokblXVuuMIyXqWVp6YkQS3hTZTdjECYp+wfuGJ94OcHjn3ysiazEBeb8ydChAJT/k
	 ARz42HnP5tAWqxm14t2JZFH7hHs6bdVM47Rn8RtP8WBXoMprGH8DoOJmYibMTp0fEs
	 JS2zV4U2QzIs80JfkLjlLOU6KmthOxUd8k6yis4pGhDaHfrP/BWqKh+FZmmktiJyih
	 +hbwnc1ub7d5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F177EE645E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723783357.3889.17129447007763127129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e157b7924e3b5fa70be9c7417f1f478fb92972cea322e8f593849d851bef682
Date: Thu, 01 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767237833

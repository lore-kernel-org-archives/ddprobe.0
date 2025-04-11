Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EB5214A71
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744385994; cv=none; b=q5avD4d71Q8M7zMY3QwjZ553aW+BNWrmdq+BjZ1VoFipgv53Ms0kyaKsX6zQlhRLkKR1SqOQs5aIirsA1zp6A+Xvwc0JpaaZ1xcncQcUNeQIp5MseIbSV/EBbA9tqzV+oaupW+4snU0KNp3OThVxpKCtMHX5/mdRk+r7zPsZnBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744385994; c=relaxed/simple;
	bh=0OA5YZ1E5Mut6g3hEhcKu7ZXtB5GtQlTox2adZcD/jA=;
	h=To:Subject:From:Message-Id:Date; b=Dxb8rMbyeh5ilSjdGEbW9QWzy+El2UeZyhGvv/gRDu4caQ5tr6s6QWMxiFYtxyJKuqgicgAxn9hpnWv52sWwX2mP+LAKcz4gavobhwV+wzvfh7wZiUTkKj8YAYfcvbeLw/B7/Bt0S9KBB/O/DeFEXyMAHsqiZQ1KbKUGRnrgueU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWFm9sOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWFm9sOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AD5C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744385993;
	bh=0OA5YZ1E5Mut6g3hEhcKu7ZXtB5GtQlTox2adZcD/jA=;
	h=To:Subject:From:Date:From;
	b=VWFm9sOMC+lcuNP9UazeZ1LEFxmYv8m4BfS9VEMW30DQRt79vfOaiNWenSQCU0LuZ
	 EYjudXzIAzH51MUYdIVvS9MEAfVuRtACXE1T8tB1lsG+w9ahqhtRS03xErqKFrnhgw
	 mfjZukZKhlYGIQ9uZ5ZV4kiIu4dwhz0t7p+kPvp7qckJRk6hZ/QQtkzcTBokLGfhqy
	 kHnuDqng34jc54rvHeVHzECuHpaULWIq8At6AyYSdsQ+l7z36fHdPtbFvASEuKecDo
	 jLcWPfNbCVuhDrQ2tHSc90PpABnASxE1Vuo3sy2v9K88g8Zid+wR6TWhdBa0YD45mA
	 xZ8Ek5W9NUycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55A9C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438599373.17915.4910793847682927193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b3f24e218e1f2dffb3a52dfe8639066a046cf7ab79bfb9cfe0acdbe6528371
Date: Fri, 11 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744385993

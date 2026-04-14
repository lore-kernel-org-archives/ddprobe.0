Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247103A4F37
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776172054; cv=none; b=YVNCvQNwu+AnKpi3cKWba5iWsQyH0GDnSJkVfvxvijYp5s49FQPll+Hwf7bWJGxPM1FUNbkLCrOird5gDHc0ljcoUBjP9Nc2gFNMXjFIsdXl+BK7FP/yX+cCve+vPGpcuGa1ubIYKOYE+wQpgXy+Qle+hc5UW55SxiWoioW2kXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776172054; c=relaxed/simple;
	bh=coaGGsVSMh2+NejEO0N9ciCy2hbM9xvDydsNiq0AkyY=;
	h=To:Subject:From:Message-Id:Date; b=EtG7eqdSddjzp8Yut5u0VWvY+wmC/+NCQYY7eWfxeSwFbntcU/NI0lGInqLaBCn1rqMNfHMaz3gu30XPOgfoejHu6lZteR6d2gtEcuB6+NBuH9kQsnNqYTgmqjCbj5ph86E9oq6AHL/haxkiYaKoFBAd0WBxiHLD/zVY3xrPVn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZbPlrF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZbPlrF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87D7C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776172053;
	bh=coaGGsVSMh2+NejEO0N9ciCy2hbM9xvDydsNiq0AkyY=;
	h=To:Subject:From:Date:From;
	b=CZbPlrF4H3s4gQSrmmGwI9g2lKQPqgaZ14CsVesdW2QXWeGxnxZ1t7QW6vUm+Nb1H
	 55l5RBiJ7246O+LS4qaMRddszazMbdnDJuOBi0XsoQ0Sw+jGL9YKkz9k2acNk5tZ1T
	 ipKaHBQrjjJkDKOgS3LGGioM5S/Fd7ymiiK4KFoCK8Ag6LcilHbi7vuV/1nFpPsSR/
	 BAAH6qSQLyVAbX7259tFZd/Tjh/ExGWuShV7s+xfpG5aFNfhLi3XikTCdmBFkPhQiT
	 gWMH2BPbe9WvQ3fnKrROeL5WSfhdTFXKuFT5+XHUAgSdYzTqTLOu74COhp/uz5Sguw
	 IxEjnH8ECJLZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ABEF9D0CD
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617205368.11870.17120772571178798667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc1f075a27648e1b05136e383fe6ea9ff287ef2263bd0873a977d59c572056b
Date: Tue, 14 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776172053

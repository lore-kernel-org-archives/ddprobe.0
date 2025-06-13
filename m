Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE323A9A5
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749842394; cv=none; b=IBsZCZNdSrINsE6KATJv+1i1O34P3OdecLL+jDHfPEv/QVZK272rmHcFqoXbOGWpwMBqmz7JeufgRh0Mgh4SSozXbex9BORvUWbhFubTnqoRtHpyfI/xASlEfLG63vf9tPGzFV1x5G7iX6rPzvyww4olGXSIcAa8+6aEBvGzwKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749842394; c=relaxed/simple;
	bh=sMSe7MknCiF2ZbvzR2oxFr2r/VwxsY+F2JKf26TMHxE=;
	h=To:Subject:From:Message-Id:Date; b=UkyMlHrD+a04xXb/zasJtcCU12fnNuqPDYbwdsrHyMby/qbCQfQDcXZHsPVzg15crrY5SfbT3pg6ym/KzuFY3yvD3DeGrVadem4VRM2ij1FlSPLUo25z8uwAuLEUp+ssGFadK9ujZ+FRrdsqalhAdDavadThx2Ef/+S2iJdTWGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWY5LpC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWY5LpC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2C5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749842393;
	bh=sMSe7MknCiF2ZbvzR2oxFr2r/VwxsY+F2JKf26TMHxE=;
	h=To:Subject:From:Date:From;
	b=GWY5LpC+rB5ed1V+vn2Fw3jDmrVp/agiLrlkBG6JYOSBuC1AdHmq5qwMP71V/KO/w
	 xnlNmBOdNnMrgceQxqhkwamlvkSDuhBp1xnxZuN4Pxa4oTwX552sF1kz5Fyp0go4wY
	 jXRcKLC2N9sOpYIBvWyae6lHmyE76Dhk0Ntb8KCJnyqxWkUGjVfEhmEpNA3Ur4NAzG
	 ahalJI3ZERbnjas7/6++S/2KsFtwGkz+7c7A9xPc8UhTopGGsLh24YH3x7TGiWXqaM
	 MQvzkRCd1DG+gPH2sBkdIpRreNZrDqMzs3uWxdbZLvfHYMN/KZ6OWD8TIod/X2QNXm
	 iahOuYm/hk1YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D0C7114A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984239359.1363.13367239821676406929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacf39891c5699fdb0d2e39a14c0d160cfbd855349edfc54d1032c7f9ec49987
Date: Fri, 13 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749842393

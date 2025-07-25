Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFBD2ED857
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753456193; cv=none; b=e52MfYDDkrpXp9M5sC53Lxn+T8ZDAaZYlzp/Q2h5mz/hPow89DaywG9ldwv3d/jmpPX4B6cWlnLxeFeOPjW3qD+VICycc6MhK671UbjXwZQ27OTqH/dPJv6nZAuoAfBs3ayzoDlbMfiSZ3+bnFeHWWRiL25iH97XWQ1lUEMK3Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753456193; c=relaxed/simple;
	bh=H3goPi1wvGKYrNgpk6eCj/zZrTxJ1IfbKmbcJ43RmyE=;
	h=To:Subject:From:Message-Id:Date; b=ZUXmmq6SYUh8g2K3K5dHV9wtJBs8Jr7V+1NIY2UiGY9k+z6c1SVuND/+GOyLml72NPVN+QclgpUaDzKlcOAmbt8XOo8bFh31JGp3GLqL+uhluBMkkmj/CI5IrhftoH3xFIrQFajd/+G7y2s+939yTiJ74G1nKkmDr41/miizx84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVhNLIAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVhNLIAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF24C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753456193;
	bh=H3goPi1wvGKYrNgpk6eCj/zZrTxJ1IfbKmbcJ43RmyE=;
	h=To:Subject:From:Date:From;
	b=oVhNLIAnvKchhVRbBw/Y3hxzCJ23Hq1gc0gRumYONJeCb2qWOvVKTYToYCY1to3eb
	 5hkwok3+eQN7q/K6F+MS8ufxbGPWhrs3jqA+0ZHW9n6VAreHwZI1tFWOGIqwzlOD39
	 Hr3n2eRL2EXo+74M3xF2+oisQTMRd6EUMy87LbbO6+6DL92k1DE2HWQRdkcBUn/tiZ
	 0lVHNmGn9TTK4MhHDbyAX/tG1WY3tHrPvi5iSwE9QOERWlUwRfhUDvvm0ww2Ib34SR
	 LQhyRKudOR6awA06YdvzyyODP+Wv9V+1KeMWHGq8LzdX3m+njNwbTf3wvkfEe28qFb
	 VIMv8MI6ghDTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90830C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345619358.10675.8182123558849901916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408564d927ad6284212f63747b54019c028366961756d1d19a094b3e3452bf29
Date: Fri, 25 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753456193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53403B2A0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764265973; cv=none; b=MeznnT3fZIZ33/BYWyxR9lwxmfH3lfgjaKzV3vVCCsl0rolBXXjWJCvyG4t/wSQO+mvNhNyP2OrPkLhi5l6yFcpoy9x+1aAyvL9MJ8w+23V15MdFnghHYph61HxKLXDy1BUXxl/B/IJDhK2dlQ8ufuPS4dG556Iz8QEJjObmjZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764265973; c=relaxed/simple;
	bh=fmqmFAdwWqUWrlBJFQnRk1GY6W9UwKSKBFUqAQiiSz8=;
	h=To:Subject:From:Message-Id:Date; b=JgaBq4BIBK99bqyNoMVoMuGaPv1lKPbCqw/hH3nCncgz3TQ9zXDXBbITCHc22jxtSaQt8Pb5MTuvVxEQBJ4x9jUoLrrorlndcdiWi74hbmeCS02We1gW+Q85Yz/O7qtjQJeTgPAsKjiYOdg0pHoYi/woT7TS0EoT6ViwbZH1vqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFbCqWqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFbCqWqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A0C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764265973;
	bh=fmqmFAdwWqUWrlBJFQnRk1GY6W9UwKSKBFUqAQiiSz8=;
	h=To:Subject:From:Date:From;
	b=QFbCqWqRp8DC0tT5MBqjSgRDCdZvoRltypXd+x6+dMHdWb2+B65NESMAkd04pYaxC
	 B4xdK2I9f7SvUnGtpFgaUYcYZ+e5JaIfBXD6Xvh9c2s5sHnagwE57l00V5Jlf1K03z
	 64dYmHGXYm+WL0CW0QZXyL6f/HXykwpUYXitNTHWuN00dJX9dEaY+q5uWMGOVwmzoJ
	 wjlkJBYC9a0Y4bzcoRcZ6cEjZeXgW94qcVwWAS6u42/QTJrmBolcipdymx4OmWQrxW
	 7LAr0U0SdIVfSKhWHW6XXIvkYyoN/ehhkggQrzZ4/ImoWJqjqAhXZErm40ppDNyWtu
	 Kztxm1sFktmQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D7CD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426597358.6668.1342101022873217270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc33e7f7a6b9074c87c22f63ed8cb21e5958c5796618b3289f14b05ecda14ba
Date: Thu, 27 Nov 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764265973

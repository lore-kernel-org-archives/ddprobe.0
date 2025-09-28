Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264351B21BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759035595; cv=none; b=uWl1Mafp0wFCaLl5lcfM+A3epn8TqK3iCiFST2+9jBWgnrhE9qLfj0TqVhWUUPiUHLmn2/1j4mMJiQeFVU4Ax2WQRowdiO0KS4R8h3+tU4cVrGUy3OQETrp4n0YsBBDATTaFDGX43uHQw+rssq/BP+uvXWsTvbf7OJyvwrXxC+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759035595; c=relaxed/simple;
	bh=xxXYb54Pbq3R95zB7JMFJ5kjBCMXJTTWgo79D7tzTRQ=;
	h=To:Subject:From:Message-Id:Date; b=GQN4APiN4OPe66v5+nrJhPbzDtXcJO2cFFNxU+t7Vi1+EkCIprB3eohgV5XfvtJLKZAKyHvRrCDTldTIZXDxbAYk/dCRgg9e3pKttreqTyXeDDauoPo0xj+Ifa/mn5V4ibfBQwKkiRJt8zRRlQSdKfdbvQVk30UVt72edFD+jek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReY723yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReY723yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A580DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759035593;
	bh=xxXYb54Pbq3R95zB7JMFJ5kjBCMXJTTWgo79D7tzTRQ=;
	h=To:Subject:From:Date:From;
	b=ReY723yx2saRr9aM1nDEAnZ/0BHpoHa64F7tVk8CNnFX9nk+tNDzfScEVcuLHl4BR
	 NN6uYT4EV5mMn5Yg99pPSmwOfwIC/GHbJY3UyUHnJnWYDgvlRydDR21Nke3ZqSQTRF
	 4qXCzGswyFp9MS+bZczzULDdcAnfoORmwKW5LaRwQyWprcmOx7Kj5H6zR8Mt6Yji1+
	 pZ/M7GgxCRKafnOPM7CDCNxEIvhzhGv8L8hvBGq5vbrJXkZgLHZTJhaNZXA3OO79PJ
	 6dKQjUPgO5EBksRUP/OF5sLN0Eou82R0DgOIDdQMCKRz0GbJ/hsZOI8eKXxJ65Njyf
	 FklVkpHD3dFFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA8CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903559357.1528.4573826572416529796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4108309fa990769e6e3b59ce46f13f79bfd969326884f906189aba659092b73
Date: Sun, 28 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759035593

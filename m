Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106EA37418A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774637694; cv=none; b=pbPGirXy0cZmw25OXpqm5aOmPxBfQ5YLWDhy1MmCGxv8oiaEKyDr6ExkSnC9VWLZka0Cyhpb7rXMSfYilv9VhRYImJp2TcL8e46PigXr1yMP8ExfHT8um5t9MBN2ZZfmlir4dglh7O8o96w6o5skOZNgxcrvSUqid+7gIKa7b5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774637694; c=relaxed/simple;
	bh=zxsnCwFIivBFvDOnmNZPAD0eIrovo1HbRPr9K/N7sUc=;
	h=To:Subject:From:Message-Id:Date; b=q7Yd3Tk3MfZXPSmNJ0K3sp0WwtiTa/Ri+8ncQWcKVbfa7+WVhBTtqYUTpXvEf5de09KuNU15WtjPTYAA2IlotIuUQqAUYHhmAguJJ4A/s9/kvugfaRUJIO2UuCRxKDa/8oLNhmrDLt8z6hc1zw8Jr1dZDVS3+GwY0b/CjnCcuGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZgRkHYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZgRkHYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9175C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774637693;
	bh=zxsnCwFIivBFvDOnmNZPAD0eIrovo1HbRPr9K/N7sUc=;
	h=To:Subject:From:Date:From;
	b=CZgRkHYzxiRDqlDHMeKVKQoECvYSdKPOdl1/PG5E91XhftfOOne2+OE4at17/UxL/
	 EExDFde07xNZgQZksyB1VuXQ03Q29NL8d/aGx4Jg9HmHh3yhE+GJxQ2x2RGZbeOUpK
	 yTSgp5ir6LgppzYfl+rbCPL5iURFd9vvsYS9Gg0Z7GYgl6VoxFipvBpK/3iBla9W7O
	 TNqXYEyLwAMBNDzSiACOYDofsxNzgdIVraKn6g82a0kcg5Apduv8R3qaF3X7Y6TUJ6
	 2+8hUhzOp4G6SrOYWOXwlptD1uAkQhzB+A3u+jigwwHjpXDdG44rrBcF59jk5fyNBD
	 9iEUmav032fCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9340510F2862
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463769359.14143.2766763170716123609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591cb8e2fcce3931a30be6e741789ce32225fe086fa6052d589e90ecefca835c
Date: Fri, 27 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774637693

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770714965B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717621643; cv=none; b=dANIssSr0yevHezOGcor2IeL/2Pqt4UcCaTmdNWOx4XCqS7aBwq7wc/BmTt0xM6IWEPMoUmVltRWsm/FlB8XJCJTl9Cmk98upSJuehfmHOyLVwZ7xl4YyFAhJU8WGXDJc+25WLtGn2szrMuUPWQbZroTkTVX0L0oEkX+4X1/sAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717621643; c=relaxed/simple;
	bh=8YF9TV7OqQDX5jn6F5db2lbAvP6PkCtFcQK7RpIK0iU=;
	h=To:Subject:From:Message-Id:Date; b=a7MPL13rDygU2WV+NZdHUwiVNppBO1b4y9cZFmLRoSwQWoLwBgiQ4xGz2Y+j9WA8VENqILd23wLZS8qgR7iUW/yE+vfJSl26FnXHdBdGfqjoYyLgdvsQVO1LaUQXLQntyoziVRI3eeIv9HJdh5FciWtfjvXuRjy73x5In1sn2xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwodqEOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwodqEOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E2AC32786
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717621642;
	bh=8YF9TV7OqQDX5jn6F5db2lbAvP6PkCtFcQK7RpIK0iU=;
	h=To:Subject:From:Date:From;
	b=TwodqEOyk0Nu73kQIOqzWNBQBuvxpgN/dh6hEEoHqc2RMMMkcpuPk2If7u+DRdvG8
	 Nu7q2vqUlI1YMro3CAUEf/kSj0yMJ1rZreh6k7QcEMUBvpZZwTcdWP0FioFd2DgZbC
	 GSJxWvzEijekx2JT3oEo2qYetUKaxo7kVjwhzEGMqmkLo6NZTd/tdANyziDqcIqLAX
	 8Y4876lKU/+JCSHHm/AQpmBhLzuZqOaN5WtaocyK5Tf5mDX3QcMpHFgwuz+v4COIoB
	 0yEIBgrbjGY1/+4qg6G5P6CHrMUhYWJHhvmJlpxj+P2coWbbqqrTgOqSh84PZ5PtOk
	 ivinWiYgi9kyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1380C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762164284.6083.15919529072983533397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44d03afff8abd59463648e29ff1921dd0df8add431d5ae92fcec58940ae2ad6
Date: Wed, 05 Jun 2024 21:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717621642

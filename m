Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D443C5538
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164694; cv=none; b=cz9VYXQum1lHxEncQWr3aZseYAUUdiuUHZpUA9nQ+j+Xjwfnz5jGmg7N5mvMwOKuAjFcqlTwgx8wlLEj88ZQ6wzz7J9bxXKW8KYhqoSqx1aat7kbwbDOMpfdfX/Dg2FiSFoSxxH0gCRtNVNHCKw8UjxbPTuVH9GQukH211w6dlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164694; c=relaxed/simple;
	bh=1XVqPVRVLBDCPgjVA54fz3F6Ur2PmPATKf1FONhkSmk=;
	h=To:Subject:From:Message-Id:Date; b=qYIQobC7rLor2xGD1PS7PBGqub8l2YIFTGncFaNKUhbktiPKL4AGMXzGDP9QJ8kJ4h/0RUOmBUt9c0mVbNnrNqsAorYP5eFgVwIasNse89HQp0aedI6QxfX1IpNgCjV0nywi9ovV2WEiYEuUvyw1xbzsnDQ2bIDew4OSMhxLl2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNzC8tLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNzC8tLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20A4C19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773164693;
	bh=1XVqPVRVLBDCPgjVA54fz3F6Ur2PmPATKf1FONhkSmk=;
	h=To:Subject:From:Date:From;
	b=dNzC8tLmj0dZC2GkCTa46rndca4YvpWwK52oOTWbLgtwjIrMRAk+ZZ7xmLX2q7ZJR
	 XFuyCK895a9hMUiIEgVYhDcjtFlJzLgjXmrlp8mBSRgeUEyjDu8pUri0pZVPgpTobs
	 hvRW4GDQ0w1k03Rbp5pd77p72drD64nALHOKf0qmS3jKfQmVCsuiWFCmpLHGJsa0ni
	 MSUwhBvCP72UxyeXuu33BMV8dYWguQ6ER/4eKMs1LEnx82Ed8dinZghD/8cAf+tcSW
	 E1sLTcoPrxTui/2JTUYiwuvXPsDu0o7v/RxdWl7/3AHicTmF6UtQo6ku+46Adsu998
	 HyZsoPvn6jE3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF58FD4F0E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316469357.7198.8306741033679061533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58943b59cdc41d39e962dbad97d1e64dc147c71512bde69bb6203ea3b072aede
Date: Tue, 10 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773164693

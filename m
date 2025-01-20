Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5D914830F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737410754; cv=none; b=grgH5DaeQuEXFM0y9E5NMePzgIU5bl6zD2lAzPV07WKtwtWg7D8nRw42z1baqelmfAqvi2N2kXv/cme5zMwoUWgRT7nyZ9K/Xwfw2j9uBzfGJjk10FA8nlC1T5vQa2ymTUOIAzLAgxdIGNfqhldvoxjOi7zUQM33aW5My/EGBTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737410754; c=relaxed/simple;
	bh=rWALKuqgF/aDjsX5u3gMGJd154h8tyiseMSQ0QaHYJk=;
	h=To:Subject:From:Message-Id:Date; b=Mgi7aLgLfIqGHhUu4SKvBww0y7dhYqsFvwrDn5qk1EBIWQyR+BBJuvnCWPddg17PdTEPv8IRqc0U6XNMN7BVLX8RaCeSKhzSpba/lnrPVWw5WPDkX2STOnqKzYpgAgN5n/IC4XKH6GzwdfHDMFB/CH73YqmZZ+swaRTFf+EM4YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2tuqMPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2tuqMPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95B3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737410753;
	bh=rWALKuqgF/aDjsX5u3gMGJd154h8tyiseMSQ0QaHYJk=;
	h=To:Subject:From:Date:From;
	b=e2tuqMPA1N+lSkzYLFcrlh+qRENpof5YzGlWZG/+nfhDH4iT5DLq3hAkqTuadN6Hj
	 38qHk2554Es2YtoZ/T7621HU8+y1VRXSvY5zaD5HcfPUo2qt6IbYVKNDwMmxLkTAJo
	 mYbxXavwmAyDj+0Be8r6rW4w+RoA5bYoEUxlyTdfFG5U5sit4LZM9VfpT1iTP+l5D1
	 QvLVuxkqCWJEwdjBdla82x+tzYnLZfsshK3KpMZHONXUSRTdUSxE89I9/NL2mFNmM4
	 AUuSUhz5zC1D4siS8XZ9bcTr3MhaZeyc9i4F6XIIimOM9EM8EKVPi/Xb5m93eR9Fi5
	 xx1yuiMQWQirg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C2C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741075358.6152.7571267677005814744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193ed1547771f25effe9cbf619a3fbe9fb37ae924173d5ee25e664585e6ad44c
Date: Mon, 20 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737410753

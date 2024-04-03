Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB654CB2B
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712124497; cv=none; b=JTgNW+M77GQqc0ufSWUjT4ThhOzshgIoq5ofjgnjhX/c2Y9uAbd959zO2SgU86wYPVO00KP7/dvxxjRPs99rwtqcao7brsVB1UABpUdicz4rn9ms6MKTtmWshExz/1j+Ml8+wZLVmbk+59oV0R7c3WMlCZDgCnpYg91UVmiJxUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712124497; c=relaxed/simple;
	bh=XDEhj6moAU4myLYhPKR/8c4n7ZHAkLGojlvswFhpxQs=;
	h=To:Subject:From:Message-Id:Date; b=kFDNyi7vtvYnBTSrEvupq9wW18G43JiFrzg4F1SK4MXMJfzY2KoB3I2VGjGmwEphBkl9fSXcKE9XzIvpDHB9K/oea5fOSzbLL8iAB5HLo+B+h/1tpV3DxiaFtz0qQ+YAMS+cNxkqOeCvNCISroHfo8n6YDCxSlECpo/x38ERMzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKkKcZXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKkKcZXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8125AC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712124496;
	bh=XDEhj6moAU4myLYhPKR/8c4n7ZHAkLGojlvswFhpxQs=;
	h=To:Subject:From:Date:From;
	b=JKkKcZXoY2dvgagFV9CJ4TORsH0wG5dfsFj0/vU7Y0q4G90f1I7wbTLfQe4YSU1bb
	 oPYI74D2wkJrhGlnkKDmr0YO/Bz0ULk+7SVVwmGKVKAyldLN0W8B+R7iU3q3LoZCxj
	 +eXvjUKGimRiZgkidqzQbtFWdJ5qTQ3ApeSU5VXsetin8nh1xYbEfChG5njy7iR5xE
	 jZBL2AZTBvpYuW2z8E5e/vc3C/1C0eMLNb2yJH5ZdFwJVQbFD12Wh1egqCyf2Ry46P
	 VSFfGfE6HFCvsgKAntMg407/bvq8HdI29ElU12rzQmS1Xvq2lhvJ6KUdgTnXtfhCrB
	 49j30ddO0L41Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A12C6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171212449642.16146.14768781845443836556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a27ef9eb290ea8945570b3bf560579fcf5565332544c4731d0915c913485661
Date: Wed, 03 Apr 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712124496

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E48317BA5
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738397754; cv=none; b=YXb7faapwZv7aHD6k4yuLhx70ZdBKHScV+TLv3V7u/Rad5AUM7KbtVWxFQRU8mCijeo3UJsgGp97qwHi/Q/F0vrqD3fI29h61nmjQAiqKTRTWqxuVvWmEABBhbHu3ySPzQrdbzT1jDchVH2W5OHjxFOv/fKfXbPPn29lADYhlGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738397754; c=relaxed/simple;
	bh=qB0bEsDOodXC+SSvdFEHXcISyGqWEudIP2pDsUeruHA=;
	h=To:Subject:From:Message-Id:Date; b=b9jRkwBrceS6SYjMU9eZ3+NdZLg/dgHVzA7beR2zu4GuncnSlZCE8BIM+8pw3nwbE2qWiVQlAVRUvVjKd1GoGW49kvnixV1wOM1oZCn5OsW4nSZ3AFAbLVVqTQjKZvdfSGjDfsDqahYPCEvBRj5uAjNgpJ/FhNqtWq4wFr5FmyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx0/Z/SU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx0/Z/SU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA74AC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738397753;
	bh=qB0bEsDOodXC+SSvdFEHXcISyGqWEudIP2pDsUeruHA=;
	h=To:Subject:From:Date:From;
	b=Bx0/Z/SU5aRtwBCWw+0kI23108kkroP58CbtkL3ncxz6fXr45tR/c3wRctm1N7Ewk
	 98msNrxGBkGAVNykQJdN2GCuqtS5rmb8pfiqBN3cKPWMC7yhtz3NwZTsDTIe4K0G51
	 gsN3tRX0xNzWDVY+0NHADBlBZEpcouMHfmR6aYnGqag47Bd1uRCXqWYlFlss6HYtAH
	 fT8bzaix34tChbTnWYzAXSM5Cu61YPit6P0B9diJ4CG+d0F8pcnCZgXKZaXWe0ZENT
	 +wM3XjejB8xayGB1IXTyo55KQELEkqM2pREnQlneKPIYBIYWFdn/vDyj73zB9Nofy8
	 CqDUBzhmwU12Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61D1C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173839775366.19761.6861122606644210160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daad485eb2ddedd52e5f59a1e6a57bbce3aef5df43e8f76534688c1cc622e43f
Date: Sat, 01 Feb 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738397753

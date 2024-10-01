Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6741CCB5C
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727808354; cv=none; b=OyE1Qomswb+HmgIy3YAqRAD95zjHsg7XgeFJTHou/TlMtRSm5wL4kP/BBSYV8o1YWDJdTZP3i0+2xt4lqygWqtddX6msl2gW6ve2FyoaFKJOholpbEuMIoOQFAPbsVFBBxQL58Ln5oogNoSofFFhlhlNEKJxZsDkZVQZ1lz3wxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727808354; c=relaxed/simple;
	bh=TXdr/DccMrnIuXTzl2avDtmwRlXsQTH+u4u2jmiiQrw=;
	h=To:Subject:From:Message-Id:Date; b=gDnaxDch810zJZOWEwPQ3XdMckmB+wXFd2027cmqkqp/6+95OCgC02hLsCk8WgOTdraw5QYszbXQZYh7n2AiwkMckCsDNCwfuxp5ryVW0z3lneqcvPcDXK8gkCcbYL4OAjyYy9Drl6XRRpPBGDIF22HkjHX2r/OTncbz/70olZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbvH8EXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbvH8EXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB216C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727808353;
	bh=TXdr/DccMrnIuXTzl2avDtmwRlXsQTH+u4u2jmiiQrw=;
	h=To:Subject:From:Date:From;
	b=LbvH8EXZi0Zunt32sA2wGSb5g3BqlJHALcwe14j2KMmyMN4B01h+IJzgmR7g/68UR
	 kWwxTzYVObSkrUNtq6y2lwshyUX3TQ5VfNnLpi5O9MtRzHnNh4oNLl2K3caZw7zQmb
	 JNFJKzyjJ11tWUHzI6K2puHUjC1MjBIz/61SStngSW1ttWth0AZRYWrIUBQetsLJXz
	 nGUNYxZw5yHszriZ+eV4ws5T8Sr+BTHC6jHAnY1bsBlnJ90+LZDPxai6NWNtul+qsg
	 LOkNredUkHE7ti2WqSsvkdAFya6AHqywqfMDYaMU9pkSobT1mCcFM91kzpui2NlPlQ
	 sa3DwxZ/Wh6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A71CEACF8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780835370.9818.10984922834383158211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ec8613c88af5f65d6df29332b08adcdc3e0f2d007692105edd35fa3ab32af8
Date: Tue, 01 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727808353

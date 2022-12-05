Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC95E17D1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7F8C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670221254;
	bh=wHLBPEsrDpJvRFGu4w9tX9qT/mv16xOr42rmRa2EnrY=;
	h=To:Subject:From:Date:From;
	b=mu7N4KM9/+a7xii0dRncDCVJ7AdczucBp8TFm9m08jcplZD4lDVpR6ho7A+c1LRcM
	 T0Aiz+bvdkNqH8RMJbDDq/QbLaDaC7239BQQF2qquAQcsFiCDdzk4bIP8CD2s7cZgw
	 8I92vK47bBPHrYGV0I4WlReJXbWdqNns+gLoGogf0p4Ssn7ycqpGuyHG7D0veN2gdS
	 telXpi+Kg0CQVJ8p1LNZIoX6XL0Y8LhZlXdlIB4LIMQrG0FDCPtzDM772VQBSCWojZ
	 GHyNKhTIIU+gjJWupDK1NnQF65qDciAxWXQe9ea6ha/LRbvvDbkbOzcm256eR3Xbvj
	 GWkKVW2JajzKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524A7C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022125432.31977.17004307733728613101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9818f5e7abf398ac53a7ab60bfeb00c8f885adf1ee8dbcbe33172e6e0719b487
Date: Mon, 05 Dec 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670221254

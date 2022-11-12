Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD93EA4
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88027C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668251454;
	bh=WHo4Hrf3X7iVyVUkj4DpoSnJkwGJcAwe6nkLKxlNF1Q=;
	h=To:Subject:From:Date:From;
	b=NmsAWaGrhH/m3m0GXSvMp2vnUKbxWL8rQpTjo65ljXrzTXatcLCn9Da49p3PCnOWh
	 GBRzMR980+FGStY8wTJOcrSll0fXcU85iLvuISWpj/qEGd6rVL5vorMOANe4CIcsV/
	 cibVxKIYkzX5/MiVMYvd/E7cwqXmS3faj8Y0R7KqTlHcEykyWzttj5W+pJjdE6YYx/
	 6App32UIcwUmInOWX6NMK7Gw7k+MbEF0eyRrmGPWZkOvhIrE7rdlwfs0sfZTeohcGq
	 M0HL6OZxh72UujTzlu7dR0CWwnNjJO92vy7bpvkWSt3p/3Bq/qKPcPhl/M3zUdVE+N
	 sQd6KhjydSRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690E3C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166825145438.19569.1710099675057986760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48019c69d9383a1b054299396e453386335b1a3e413eb81306af690548d7bd86
Date: Sat, 12 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668251454

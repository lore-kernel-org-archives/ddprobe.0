Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B7A17AD9
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 23:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C012CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692141788;
	bh=4lwWmJzaVE3Jr1kHe1Ra3IA+BHQ8SjmbocfuQwhurRk=;
	h=To:Subject:From:Date:From;
	b=IoaOeLWkAbPfvfw3J6x9Rf5Bazl/3BFANlm5UXNBb95CTQopuHgfrw47y/IGMsgQ6
	 vKjEevD1RWBeHukBXxivmqqMsg4KRA8V3K4VDtTX19+KeXYrIOsdbWF0GOdDbMK+qe
	 5Tk0kuzD3Ocj1a4+P2iegtzrmRMYUI+BE8iOhoWyRgryrJEtDERUafqdGCSjI/XXqh
	 fu96tk+SXzsTC6VS1T+5svicnbo2a3fTK3TcKW77SgUFdqj4wTalBypDzz8tvT4Olw
	 rNgLAs1c3vYGsuq6CDEQcMruT4imj+UmDGHRfJjvg9JQLoMKd2o0jaxhTjeG3oXC33
	 kX0QAGGnrVG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62DDC0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169214178867.3447.17659847239058988631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13211979636f721c2bed2063106a233629b5934f0cf2c29e6a790989ae08579d
Date: Tue, 15 Aug 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692141788

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99EA7C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70302C433B5
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666423253;
	bh=xiyBaogdr+7ElrYmDyE5oqMxc3n6QQ+EUu6IZxV60n0=;
	h=To:Subject:From:Date:From;
	b=WbN38z3h3fqkmgujfMP5mqSO6J0Q2GpgdbUcKyswmjG9ZTYceAFO9CQ0TVbA7Fz3z
	 IPi1qSX9zXUxr2b8THN6Ve8l3Nh5USJvY3OphiHjKeipZrUletDdJs7yzcOROp6smG
	 f3cyjCLGDDpqUkmzzpkGX0jxzsZPY5OeY8+4jF2Q4S2rNfSXH3cEIuMYozBILibUAM
	 V8mhdV4R2zj3/N/NIDqZDFvlLLGhtivGnaBw1ATVyqlk+AbJ7ov1UUKGo7b3kmX95t
	 8HcaUSy0HrIDxH5cZRe6Zey8F60WXA+1rqIcOFNeLafAp3HLdpSDjEE3emJYYAJZLf
	 qYtc7BLfaUFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BC9C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642325332.25533.8086814772802482848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e852370414b6988fb15150f4da4d8adf9be6d88ca97cfbafbe07349de443c099
Date: Sat, 22 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666423253

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6262588
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84431C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673606487;
	bh=JztMkvisGmRpJaHFNSQxMLboCqLxBAyg0WNfjnZN+ns=;
	h=To:Subject:From:Date:From;
	b=hM7uQyj+tWIGVpxHQHo5trvE6fXAb8bn+jyybPfXdLzGfrTXJhrUV+4mSiLYglYdL
	 hrxGzVXOt7Hj5YlGdactuA4qPyS95NWZanSWOywXNpXYoiwWJOZsPqQqp4ZWeHQXbj
	 rGpEMOg1yKiCV4TeCyxhvqbOehofWvfsm4YQCGRoWaxV9k2mEBdstu4kyyI2TfkKRF
	 BZIDKkSp0kJdBoU2AOdzVPK522Q8UUFzMz6Im7k3Ja86Zn+pDIccLbLcgZWNDrcAxr
	 hxCb+bQzw84jICngDfBNFaYbG8gwUrCczOEKOciGcqqwfugF7S/Z3vvR3pdigPP4dz
	 gogeV84zRtGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D9DC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360648741.18383.14776233375692657019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9660b918559bba9573b870af55570efa486df60a15fc95cb3ea3f420a6d688
Date: Fri, 13 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673606487

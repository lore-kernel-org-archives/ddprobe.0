Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B039B1FA4
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB8FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670411454;
	bh=/BRTxZavvzC50V7w7cskzhQKpahWEEz91pJmo3azlWI=;
	h=To:Subject:From:Date:From;
	b=QXc/3/DJiDWCaPVrIak4nzKlBVbItC2172E4twKTNtV+p3/35LYzt/HtV+dWwwqEo
	 yZpeB3b4gfb7I43HSg+0Hm00LABjnlvoFFWRnPsx3YT3UKrKT8xdQUFLrI5MXiDq7q
	 GSMp+SSqPUSxxIMg70JsJ2LPscXMPAwefIIUDnvBj7Ba7MBoACyD+w+5BLG1eXPMUh
	 O1XArWoom92wWd5RKAt79bGuOY1Z2fOz0LwdCFQHT3nOzKof2VQjE5D+TsOJvxWhH5
	 fKlBGQtvz4nQv2uyElK2Dl5qHFgqQfRcAmdZ7ZlS/lN96LqTd7OZ+OuoZm8cAZSm83
	 /4t/Uxxal6Q6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57ABEC4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041145435.14232.14595286628759365632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d099adb344f3b9852d7e0572a4f1ad3da85bca0424cd59bc314f5c7f2ad88038
Date: Wed, 07 Dec 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670411454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADED8BE8
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FB11C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685809686;
	bh=GczVIdZilM0yZikwmKfkuzdgXTvdTNQ+0wQKMi5lmrA=;
	h=To:Subject:From:Date:From;
	b=VwiGnCLV33TQBH+FBuORvhndAlbjlAgp+hGtE2iumLzQkj6Jq+WCRfYjr40OEwSub
	 5YkHrbU7f2GaliZRn7jgHtfabG8zfcCJD3kPt2iuoVt1bmjjkmiSvblbN1J7eubcWH
	 OI8GjKssdV4eeybdjkbmEwyOmQFk/EltNfcR8dbAN0I2q11zTnCIRlWUccUwWdLGnN
	 vX/kN2OVI0p2/Qib+ew4WmfeTDyIrapoAoT6XTOtP+HzKd7HAJryvVVgGN22ZfYXhE
	 gEn2rL4WQc64BnnOg/vcRDOVrELsBlzN5gUOBDmnGo0rE1O8zPfFR/ZgOVTIGjFl7t
	 KDjPp184Fgwrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8890C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168580968575.15592.8337652066483437748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564b81667701fd19b8e6440bc3b1afc8a13abc77aaada760f9645066ac4930db
Date: Sat, 03 Jun 2023 16:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685809685

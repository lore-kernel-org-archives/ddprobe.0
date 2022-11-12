Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D524263CC
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB0BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668282054;
	bh=IBzRkxDDAX7U0GBGKQa9c00REsLh06Zhc2VUtQQarxQ=;
	h=To:Subject:From:Date:From;
	b=C4gkf4a6vuvGXSb72rvMBLumUWo5njn9ef04aaNyE0p8/h9Ovuoy+2rWIxOsvXBb2
	 NyQ6kXh+DeLPVmvI2XQMCS15Z3E+FhHtuFpuPccRlQyA3Ty2INUYwZpvS/mnnl8fw1
	 yEs9jy12v8UPUAJ0FvEihw7oVOQ/IsDWw/FSDvKXu6hHiuvJIavAq2oU4QoWlPs1Cf
	 ItCCX3T/gQI4NhIGwYa29FWtq8sf3mrYNaJ3RbJIe0UafOEBx6kZrC8Su0M1iwdGj8
	 4LnmkgqIDp2mvQwBnszc2uVlfZ8sF0l+M9uWSFJHgUegWu9K2xlSJcVx51asSE9/Iu
	 m2qeGRtGjMFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C53C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828205435.14387.10010596269986822462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1051596f863897294d2b1cece28bf6dab0ffecd9e267536989bb95f2bc66b96
Date: Sat, 12 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668282054

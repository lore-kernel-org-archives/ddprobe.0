Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8121A40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF32C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662793253;
	bh=YQDB2ft+38Dsa3C0lwhvoaLhFY9YX8fPyfyq6GcckkM=;
	h=To:Subject:From:Date:From;
	b=DdAdr2cD4sWvvS+oKeDMOPlVmBa5oUNZ0T89PVFUXqVlh00sbUcizAoyjfozmhX51
	 5DR/v7lfMz1ZrskAXzWzSxDd7DMn3sAO7k2YCZl3JBbuPNxojzTOLhZ0oB108BuPzZ
	 IsP5NnVErZVdOsQY+oUj/DWAqGC/zkPeVRIeVCML0rDSSv45DIAaUv0sgA2Bg+N+yl
	 xE3vTms/qJ8Cdq0QwZuxRYXKV/1shHQ+IXquVRypNJw8s7UTCQ30oTAAdLeAGFmNeF
	 7oKsKWtI1XnavErYKZalM+vZW2e/OkCGgSb5TzylEaB6v656KsRsQQBMi4xU9MEn2z
	 W6jtvqmIrts6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E8DC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279325334.30026.4802787138285326198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6a3627a4f0d26c76a5da9382841a1ce413f78536e33141b3592a5319b1cbb7
Date: Sat, 10 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662793253

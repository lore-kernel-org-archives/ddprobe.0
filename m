Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD92865B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70710C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661930453;
	bh=MeqtMpqjufkRTaL2w7tOwFcCk1joa1wcsyuPhZbVEqM=;
	h=To:Subject:From:Date:From;
	b=a/TlyXl7rz2jlOVycJOfqwX8DfEX1OCfskgVhV9F64nLmezI08mcoWbFWZJaIECFp
	 1KOqHBTkKazYeqiknp8AkFBncyz2BPqnwE5cXck/ZDriNpeQWr7SkqMiKAOIQwsbcB
	 LO5VIoIGwUFgf/oj6Rs4qfN4K8Kjb9qUxbs17bcKKkVRGc8y2xzooQCQckDf/AKMlc
	 /oKgbEM4g7RmpVvh1CPnoJTd2m57sx9Gz6e5HgS3979I0FgP2xKiG5Sgw3iV5lLWny
	 foMA6RUul++2n42JuL3tHpolQdcIZqZAtge+0NFDSfp5Ovqzl6BvH1SsmonSA1YTE/
	 PtF/lbHFtFsOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55450ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193045334.14875.2541718747889730684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7136b510509086efb4b71ca1d9ba973aec5a5bd6211fb5deeb8b8af17b1c32e
Date: Wed, 31 Aug 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661930453

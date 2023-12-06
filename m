Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116DE47778
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klbb75pM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81233C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701896896;
	bh=bbb7U1dznjctIRWO4FZq7iwg+2jnjjJjKUBxYMMjg5E=;
	h=To:Subject:From:Date:From;
	b=klbb75pMpQRCQ9n6ePrE2snxh1brcAckrOcJDW8ctCRjB9SkRZS6otmxiBmtHN1tw
	 r9U7tBbQuH89zzOVZOsxJeRPmBJTuTi79YkV9W05sRnaxcinZBtpfZZeGuqkVcPqVS
	 IIhhAjMpAmX6EEyFHBdS8hQE3JJkbDsjUiHvwk0Vpt7BYuOItaUH8EsW0/3QnaNSZ0
	 7X6fwJbOtk06ywlIOyetWRAsYZAoWuZcsG1HZVJSD7tAuMuhvB/eIXpq1J++3uHsFG
	 von7MIHJjv/6WWoqAXOsNC5/ePHXaDc+Yk9hhG1NYpLO2kNj5RR/IQpQyijogV14Am
	 xFa70jxCUsFTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EACC10DCE
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170189689639.19226.3770981932988743228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b488cdc90c91fdc5a670bb708aef9b274576741df119501b863a701a5c99c347
Date: Wed, 06 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701896896

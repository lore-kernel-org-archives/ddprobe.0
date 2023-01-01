Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF987C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A13DC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672531887;
	bh=qUy3R0JXmwQQnniKp0Jaj6SE86wqXddYwmnbcgRhUng=;
	h=To:Subject:From:Date:From;
	b=W/rKSB2xbc91JIxdZTj5Za1BmqqERfGIDINTILdmj7IWQSVOarYaHPnj5AcQorf22
	 Byd65TNUrOIHMGGF6/YiS1HYVrnaIVt4inHzWOKw+2Y2gs9Tn8uQHDyET1XO20796Q
	 hANotbIH70LvpsNvOquzjjVXEvHNd5Q9IJElnag5EUPtOPsX7hdRV2IK+9l32k8xWU
	 9TpRZ4EbFdR4dwKXsxjaK7ReG+/KaEV+WtVPuI6QCN4qXn02dJsAigrkCVUg9Dgrpy
	 aVgJK9mhLevqQacF656HihhDhNpt1wSxUeOI7FB4HoTMjAu/oCtbclgYhIQ/rVjQBL
	 dd+yDoKCxYUnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE9BC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253188737.4592.15389076596772380201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757706763325875430c7ad0dca6c1386c613af829967a80e080cdf623eeef270
Date: Sun, 01 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672531887

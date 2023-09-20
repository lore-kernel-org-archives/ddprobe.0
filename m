Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7912917CE
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 01:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 01:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695173108;
	bh=1oGoT3kbiAOIq7JtvQUlUxt1pWmny4Z3Xazf3cGQYmU=;
	h=To:Subject:From:Date:From;
	b=lXjX853GrpY92arXUoGJZNMeL5Kis101zeYu48FLUc/FaWA/LAnqi4YwLeUyHQoCu
	 UttMhLS6BjZyl52hsrczK253GvdGuRoN/Zqa0A74RAbyksVMuBUnUHr4UMeEcSeMyI
	 qqY2k0M97sZCpADk7pM7VEEQEGRZAk5P9CawUpWw4srmq/lLow7FVgAB7aRTzlYnv0
	 +SUS3cMjQlu7bgDRpAU5YlzGvQxUFythUL6UgSO4gzFoH6BCrtUnVf4iXe/3wCNVUe
	 yAfdTGZfiYfoOvVl0hZ8FfS8jiWsWdUK8WnwmewxIm4RIU5Vj5KHYofvVQUh8e8FwU
	 eFeBkgEpDoRbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE0FCE79A8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 01:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169517310868.12562.15279108436004096951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa79b28e5219a998aa2f76f51bc4c59dbfc7eda7ccf6f051e8c23d8edbcb1b65
Date: Wed, 20 Sep 2023 01:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695173108

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC205408F8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B7D8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686373686;
	bh=buxI2MIdPYBtq6nVLXK11uMU08P7GSJNQ0x+0KLQL4E=;
	h=To:Subject:From:Date:From;
	b=TmA/YC4Mbu4LHHSeUkxHq0UPsJZMc/uQAHeOQcqY7jTD7bDIWVZqIIlMugQkn8KJY
	 u72umW9kyuP+JsuET7+ZIAlasb+JTa2n5ygspG8t9p7nArqPXcD2GvALIOuCF0xfdi
	 nzGqmUhj16gCeCEWNNHkteQeJiM/qzyt+hSdAfAgzjhlUHjGDm7LZLrlOJme47tbKz
	 ZNWDcflRAJcZgUE9FzNYorBrTLeReBMB9b/LafmDlGgaiayY2EaSj5X1ulYvIsgP+5
	 A+8gn/mS8cSBMbbczO9XEKYRb4lI2Dmolocu30V1RBVhcFPylWKwjZdhNOUa9O5J1r
	 cbUc8UM4KyHcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2259C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637368594.11915.8981513849600453613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5045152e322fb410ffd3064e8ffdef2c456b13c7436209acd0045234bc805e4f
Date: Sat, 10 Jun 2023 05:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686373685

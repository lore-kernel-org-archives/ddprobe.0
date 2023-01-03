Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DBE8466
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BF7C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672759287;
	bh=RKa2AMuGjV1MH6NF0RTj+oN2hA+6ue0iNbzsuPfgSJM=;
	h=To:Subject:From:Date:From;
	b=diaWzCifufo/dNJSZ3/1iEnJO8GJyBX7ZA/eh6Gi3r92ddsdvRMQzs81ARq8wpsbJ
	 W9MV+70EnYDDPEnw4T19Tw/5xSfBTaYYD6fayTmjToYc8IfUsCgDOui1GmfmoC6klD
	 TEuKhvUWlHL/SvhTwUffSBg8bqWej/5cdQeBOKkujJuxWeHQQEv2LPbHXVtq7VUvgD
	 SmkfGc9+HRNzcm0wS1CpTG8FlB9dYI5FBVCrn+qpOTtRtGIVlP32dy/yeli12ig/DH
	 YYNRm7R+xsYXhKMEnLYcTtGbXvtZ+LYw3Zph1TxpGvZ2RjZ7/SQPhQ19v5zHZ40tUr
	 7GcsxoPXSsAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A83DC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275928742.6423.9067308079314849278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ce46fba6aea5f0ba70b5f142e26fb979ffd536890358d0abc406bf102d5481
Date: Tue, 03 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672759287

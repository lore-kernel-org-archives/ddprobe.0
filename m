Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381ED15CD
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 09:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E187AC433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 09:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689414668;
	bh=Ypyf9tS+ickQpPJ+eZrQePXyV16Xho4mA/sfD53p1bQ=;
	h=To:Subject:From:Date:From;
	b=kr+k2oru8TldVfUiUnqrHEy6bguDQdBfjKyO1PSDo5ONO7Ygl3jTGS0Is4A8wYwbs
	 sA9owNhr3VkxpxYRxEkRNELxeZfp54E6VGInA/NAZpvHxqwAsAqORGJrdeJGw4kO3b
	 cKMcf0i1K/U34kidO03DQSoLYpfvFqheFjBWk/Fjd+ZY8aR99NJc6YIUsIAGD8TjNd
	 geyBqq194/S+mOcB5W7Ydc8KWrlqjmWhKKstLFLpwn6iXV4NRVSVkkmnsVRruHo+fx
	 bq/7tb/3H0H7ygfrfLhCawKQOlE6R4ZNUxd0aytJGkDU80a6AWblZw+iVnWIJp29K1
	 1I8JEUTagOM2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0F4EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 09:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168941466875.30233.1337515043420230250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c72b63ff00ad59b937af8377a4768622ac30cd6444e28ac3d5fb79e2397cde
Date: Sat, 15 Jul 2023 09:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689414668

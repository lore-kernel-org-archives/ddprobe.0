Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02A423D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D8CBC433F0
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671291687;
	bh=Azz4an9YIc+LcMaLeAAPkd8lCdo0CDGRdkWcLm/RMKg=;
	h=To:Subject:From:Date:From;
	b=rANaqmlsGop7qdngIwiS1EVrt4Tg13J2iMSUTfFebXrQsW7lu40uFD4pVkGgxnM7i
	 BZowRr+e42odmbGqhhaXsAjZnv1mB5ahmiE3ZoqeI+2mWpEldlP1ZJ9H/WKU1bpter
	 4oz7x10xRhlwtcTR9xo8sbKHPOUV1bt1kb3ccYpOTDII/balla3529rm7Q2ckHnEX0
	 ADM9qi8W5UnEPJmzltykUW858IHu2RnDHbIN2Rw/RPBuQECwhqspKwR4IziuPd6NNd
	 e4nMsGjcKzO6/0VQQpppCxm66TYBnyJf5rSpCfmZ8COj4DH47xMIYrEiP2KffwhXfL
	 W2D8uID3ElmnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7015BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129168745.22487.10624130773433234498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfd9d02ecd22c13fae08f58b5a2ad739a5cc12904a2d45d3d25005cce0fb690
Date: Sat, 17 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671291687

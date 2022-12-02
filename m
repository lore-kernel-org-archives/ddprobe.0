Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F261C26
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF8BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670024454;
	bh=xi962lS1wx4Hf+s6Vu+9n2jupImJJZ93Tuoibxhfzrw=;
	h=To:Subject:From:Date:From;
	b=hiZluqBiSh00GioE4BRqS+Ty8TdVDlqc30g7RGz2ntLvBCkGIcY6C9yJXaNRmRGYJ
	 n4YvLuZrwCeiaEyxTR5Xn9pvL2KvsBJQykiPwZiZLsjYsp+RfJtQowuZ9ZOhZfKL89
	 4EkGdiwqMQBITyGmLEcIcdZ40Z6VucdlL1/RF56HauHUX3GX6Poq60kXuT+zMf+QIS
	 YtGWF88Q8VFgPvHQ8D7xsKAOU6Gy6JUg0bt2ywwj86xgt0e0kUhyjbqj92PmZCy2LO
	 wKtNLicRdD7qW/VYCYGUs2AEwKQzlh+N25US5jXSxNi6p/pfepEakT5E/2yagEMc6y
	 sepQnMtjLc7Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F421C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002445431.14587.9374419964732402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09dfb0c43ab135588f8b9dabed1cbb1f318045416dc11c951976463c7473b5aa
Date: Fri, 02 Dec 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670024454

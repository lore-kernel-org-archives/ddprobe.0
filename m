Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E9C811
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C826C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670497254;
	bh=zm0hEKXgtQtm0+acCgyVQ+7c/VGF5bgAl9UCVg+dX8o=;
	h=To:Subject:From:Date:From;
	b=exhNw2Zu95E42ITp54Bi39XlHL79rMXGl8FlWDv8bNyu7mhIaqADl7HtFsnW7jejd
	 4bwwtbFpj0BmJqIQaNkiJcaseRTSRoVMgAXFFJHG5Wyx5xHZswIJby2Rz9Yi96NJlD
	 HM+V1pzJPGfPd2nrUDCaDEuA9f0+l5QkYNNvgUFUV5+Et9AVtnf75ZRgjpjYywiFhQ
	 FYqc0ynwWvAWzVH9E7i91YKfcfx0rEiaexK66uZpQ78GJ7wRE4tv7EnyKzjoEggdVy
	 oWjkUxKmHK7YYsfQRUhL6iqDnLyzgCvkWqXX/fp0RP+T6kzjN+jxXAR/d6qpkO8PgM
	 ZsK0lhkZrKcuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F558C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049725438.22830.17739986385337008314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86737c517b846c3dc3c5482dcf39aa8db9ec62c7d99ba7fcb8051ba34ffe1183
Date: Thu, 08 Dec 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670497254

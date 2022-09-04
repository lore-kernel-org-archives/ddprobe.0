Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37AD1FC3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77303C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662262253;
	bh=y67Z3IqsleHI4ij7m1zR1MiEJTp/r7KnieLYURXWchc=;
	h=To:Subject:From:Date:From;
	b=uoDy3ou0vWibbM339f20HJjOfI/s4kLsC+i5Qd3MzVitevU1arS5Lk+OqG+7Rs4Pv
	 EjskwMO2hHBbhomweKFV4aP74PmCe85s7VTs5CkFj5fBYwRNrlvLfyQYFVvB45xKhV
	 PkKgUj8Xv1rHZdwfIwZ8691PZrD+8AqW7audoK2ZXoVj6oBTXU7DxGqnrNa+OSbtoE
	 90ETbdckSyFRcCtnY0QbadwqHbvA0T9YzrtnKUbrUMW6xVlSJXsKTJXHamaljv1Zr2
	 6HfA6vkGpvGWqODhu2DUvPufJLAxaDlCY1MYCE8I0CvaImMWjttzB5xhMU+723P5Z0
	 annsJ8TxV/zYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CAA4ECAAD5
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166226225336.2870.12176325401022297095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ac3e1be35c6a5a7514013ae378d836e0099f43de996309e1a3e2452c8d8535
Date: Sun, 04 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662262253

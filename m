Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C722B3D65
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECA1C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662652853;
	bh=uiChrCKZ6dCnlCQhc8apjIaumzA8mzP6GqN7vWv5yNI=;
	h=To:Subject:From:Date:From;
	b=OebyfLLTPYmOzEJV/Wfb3mV+yY6/PBeGPYUNkAQTjkrbO9Rh2gbgmXDWD4j9h+dFi
	 xAOlEJbMWmBa3sSAByvPqBZR72OqPFf8zH8qZ6+tjbtjaWMt83nepfdsziGqzvcgfn
	 UHWo3rzEw/c3X2VfHjlmTPK7Gcx6nNafjxgT3DhK2g2RJhk482/kw9eRInWzqhV0EP
	 mwGTKBhGhELQfSoDi51h8WYLbSQbdNzQWp9pffUtYsLUZRTd7GsL2DBk0+jN2ZlPT1
	 ufz0AQ/HzwYZSJBRIvE1/8557BoEZc01csttChyPZEIXmrnkaVZ0hL0dlTAoWw394S
	 X+E/TUadp/eZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C6DC6FA89
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166265285332.26910.18072773916606380474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051f6d7367ef42a535af4cd2d98e3f3b18e1f92227ef178762a573a0b754cfb6
Date: Thu, 08 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662652853

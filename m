Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCF27C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D31C433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670030454;
	bh=4F+mZQxT3ptpP0TNspKXKMALAdZvPNxV7epM/qmtJM8=;
	h=To:Subject:From:Date:From;
	b=cBokPrA+MlXbs387prSQQ6ztQFh6WydPWT8xqOqkHWjYEjm93u6e9oXIO3q3Atcde
	 Ot+e6lQthxiKbEutD6DDgj3/KRZD6ohLHBiVgBHDkfLHu3McyHgAnTHJLRgE4tlYj5
	 1dQFvNbZk+WVFOvQcdmY6D4Ww6m6+NLdzQ1E5EJRXQ5+AKyB3QjD7Ls7Y0zJaIYoYs
	 /jbJKZHDXJ7BiVOIKJPrXKkccb9SewVBCqM5nPIctAaXN+xJKmveisIDCrrNcF2sKY
	 CCAgRjhoWiGrp1on2Qxrvs6t92lsArz/RXEFJ5j0R5q0riHmokNUNL7OnG290d4oXB
	 V3dioHPVeVBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5571CC4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003045434.19681.17692763304625999997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120415555f9deccbb1453c9ca40f4a1e3ce1b4e770ceea2a1e682af0e4f911ca
Date: Sat, 03 Dec 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670030454

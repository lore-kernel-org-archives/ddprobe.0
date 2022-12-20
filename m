Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3874184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 766E1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671522087;
	bh=Z3yJl6VGxNQwdzBkW6cMXVYI4SKwjNOxvIqRp6bCmLg=;
	h=To:Subject:From:Date:From;
	b=ZS2vauLirXzrxW5TGXpuvEejM+m0OopYx0rKQAM8pu/MXiItCQZRjPmVfpT+HJNW0
	 xTIUc6rr8EpYRlrM+E9G+Iste/SJLuhWc/idcf2jd4Ee513iZB912qNLqespGFLXkF
	 EJ4qJkOU9HgDGpS3NIGlLcfKrasBLGXphEaplwp+PdHAyWDwdbkFu4nEqSV4YtF78H
	 KgdIml0e5JuLK4BnGHaM0KZ+cQ/11V/HhknEDBDulYp86YrjhtOl/Y2aeaQeMvuZ4X
	 lZI/IMn2bgJhWzC7ZIAXbGUWuNk5J5nYZ8Xil9FSQycawoLTnUw8v4OtevjXySvHqa
	 PWWb4kSrkIIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE5AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152208737.22970.13979986965825265811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecbcdf81d45f91d9aa63f06d834ddbd1eae8d09963d2a4ce3a282ec5d6741dd0
Date: Tue, 20 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671522087

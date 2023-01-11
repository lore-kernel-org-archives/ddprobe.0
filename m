Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D847620FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F518C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673438487;
	bh=pVTTkGyIS7KodZbWIrjcm/bhaoa3CvDmWt6LyrGGVGQ=;
	h=To:Subject:From:Date:From;
	b=hey3JtrcBRv+OiNX+9HM3Mg1FlA5dzS244bmWO1amZdin/1Y8MOBcD94Cd7XVJ+v7
	 6hfa48fuAoLs4xA3T3vfIw+7gt9DP7HQoJnAfdrdr/aJCC8waPYiaW8a/IqvCwo2xu
	 ondpZ4AKWpZU9HaN4iqE6N/mJEKWfBD0hTh5iSHP7jHxhzPtwDC7TJaSz6WJ6DVIYH
	 HoRFgPIYYP92vCfJoLa3OsL1kktBdEw6ykldmbFCxey0FsLq7K1XlYgJGDFzhnBAJg
	 P8ZVYHX3Bh1DWDpz9NvRIv5qYDs9ohQrVOCukcDwsAuGr3M0plItUrKJFoAa2gT07g
	 guLxdXKKPVjUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6082FC46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343848738.4979.18098491712239201655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b49bad1635439dbbdce8546b94ee464bc705ce7ad13aed0cf7feb201bc35e1e
Date: Wed, 11 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673438487

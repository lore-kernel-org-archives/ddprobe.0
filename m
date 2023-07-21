Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A8C10FC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6550C433CD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689920528;
	bh=3jkN5EB8iObQ0y4di8WjFbPOEh7cVrGpQxFtditH1nw=;
	h=To:Subject:From:Date:From;
	b=tzdzYng/RG3FXPhNLBkDwBkQbcOWI0Dg8bzB1BZChOt4WnHtIbJVGU4oQPdol+/sw
	 PuWUsARhDSfWNS4MRSvkgeaaxOjYHHadhmn6497WudtWirLaZzHfqSt9dFJaMJMN13
	 A+C7qbUqwqdu+kwrgd9a5rd/viSzQvahbArQHpQ9cphrnOimzOzrNgVE6dyiEIn/ku
	 Mm8QB9UW99eZebDhZdZB1PX6TL/7shW9IBd+shcXQNoT6O3d96x2RAsktqNMiPq2RO
	 G0ux6M0t8sC+hHcD4i9g4b+tXQVH11xtLj2va06RBEh5duuCfkizxMd7SJuADQ3KfH
	 6YPN4t8medwlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D4DC001DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168992052873.25433.8612260845247490726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcdd64c6bf9c6ae590f4a9f05a34167ffab709c19d24c7a61bd7ccfa265321f
Date: Fri, 21 Jul 2023 06:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689920528

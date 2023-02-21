Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C50F8F78
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 21:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1700DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 21:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677016266;
	bh=JtUWWYnViaKFuef39Egk+TKuOMRmJbLWlManNE9xdVg=;
	h=To:Subject:From:Date:From;
	b=ubAODa/dh7Kfp5cfDkDLuH3650z+BWJJSbKAqr0+EinEdeC3laOH0HA5MLZhBP3nU
	 /aLgjn1HHMIAcY9bXickUyxVkbCzQgZvxEWf/UrQvLePUoivBKJZWar+lkknEgbZ/1
	 JdkY3zK/YmlAcoc6x+B6JBNoTH+Ct7kO4DtZlrxAUTII8ol4Cr8snaN/OgSFMpSwlc
	 6osD+wQiY4zUcOMm0ebu9hFLSHO9nY9SvLkKqEgZkAtB5UXEyt+oW6lLkQ7zYHP1Ch
	 3ov46vs9WkVGeuRUtrgDFgC15ZQL+IAi7uAZMNxz1hznnE3wBzZKCiijZEAIPwCjxB
	 ccmZOxWQy2ZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E29A5C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 21:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167701626591.7720.15226937272365709184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79dc2b369702596e5479e3509b9dc0f854651a751168b7ff12197086f6f61e6
Date: Tue, 21 Feb 2023 21:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677016265

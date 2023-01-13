Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E080F622
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DECEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673575887;
	bh=nP7P74owiZaFan56q0m8r6NwVu/igAjmURi5hKJFhLY=;
	h=To:Subject:From:Date:From;
	b=R2/uIZ4ZAby3fOsoFJPSzcF0fNoYUqeCIxkoXBTHXrFn98lF2KbJjcs4TBsUuzDSo
	 kMKdM0ApJgDkWIQt5F/u8/jDpnKDQ5wa9xlQcQtQuazZCOL6anj+ADM+DW4FZO9LWC
	 xghGUDxGP9Hn1ZL/hUJhe8wTaP/wjG8BH8LzPOEaEj0QnHaDuJNkcxf4EC1DDp8TTZ
	 carfKybRHZ2tlqczK0qurb0u59iG8sm1o7EuVmWYsgYhaJXFP2KJwAvupYabdR8pfL
	 fKOqW1c79Rw6TqGxio7Wk0ijpeOVxDGFPh47RbFNUAqAK7KX/DgEG/CSF3TyyOPMAC
	 6uU1RgK4dbHaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642EEC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357588740.26920.6476846150223927360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff244d656f099c3e57434be83d85a067cec320419c45ae1bd9cd4c3f3a6ebbdd
Date: Fri, 13 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673575887

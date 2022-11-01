Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC4E366
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC74C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667274054;
	bh=bu42VvrO6B6qaVqUay8JA4p35u/6PTDQMy4zpDADUUo=;
	h=To:Subject:From:Date:From;
	b=a4vRfFNqY0fBHqPRgGr9KprhxG0jpaIkG/Ck5+MLc7MazZrFQ3qAsFPq2vAQWT3Nz
	 j21VfGIblSPvlvnPTaclOhcMhLGTihirZAGbCn0zOI8OB9Oz43eTlKzLOCKpTbIeTm
	 FmJ1hbN/ziw01oWoZAsfCYI8+GEC/QJ5y9uQgnPeHw99G8JUwwf12f+Mk8m3TJ3qHL
	 iKdbTthAgMTPzwwPzjMK4Od8Ux/RIJ5mCMtUlYxaVhTYe3HaCqnHZcXSbhEevYjRql
	 Ls8dAX6socDJf61cUpx50lxg1UDvURnbPdxx51N1S9LBHbrok04uGFJG5CwwJcBTAo
	 s27gWeJmPbkFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FC3FA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166727405434.548.12168840318067091456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a558aa870e3667f5275d0a28c984c256a98bb296ce1db9cd6306ed427ec0b53d
Date: Tue, 01 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667274054

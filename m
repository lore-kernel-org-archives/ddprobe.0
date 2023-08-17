Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55752D2F1
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 08:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E35C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692260588;
	bh=NVckr/WIJ9ScwMWdTfMCD1OuRWddKGNtbPkcxhIn2H8=;
	h=To:Subject:From:Date:From;
	b=T8pwmwJHfJe0WPbFlr4re5RXlkNB5w63Y5/JRTCzDlqgeX5sQLbBaDW9f/dWah3kS
	 cx/TdxVhda4G/LPXj4M2zvSbY86YK3sdW2aZPwapa7U4zvYSxsNRM6yujWGuYfmX+H
	 4Fx8EH6T/SABumL7wkT7rqxtqYYuTaGQynlDGlFQ9lRch+QgYBjgsav2UZ9l3WzwTD
	 jhzNH7NcFm5jQsLKMQHid8r6BL0aPh1FFd0uS0XwztaBYrU2Eqj/qjqg1iiqCCjQPg
	 OatLZHipPdy4VOEGf0onCcHlLDQ8XI8V2rI/xoY1MzImrEAVI3015xYPKFSXMyS6Pr
	 pw51GrD/nIAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB213EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169226058869.14262.374890109584942630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039c364be095fdec558c7786095b20e3375491906b45dae60015adefc8a9599f
Date: Thu, 17 Aug 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692260588

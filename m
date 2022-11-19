Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CF9EBFD
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71667C433D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668896454;
	bh=ZZOxDdprxvoVATBFVPN4XVX+6rXrYHSow924WBVjHm0=;
	h=To:Subject:From:Date:From;
	b=jrJ2pxTzlsYRiQ/bbFrT+f8fvIwOcNSjwlEsg/T7a64/l0KgsYQmgJk045Qa+71Hv
	 QJfJTgNGIEB3cVoi3InSYc/bplIdXs0wk5hUc9KuWD5a+GYWk1GCv1MZLf/06dqsXP
	 FWf/TdXFGtvicrf8Hh8HlyAVWr5CJuRTzM4lKc043BIXEz5+aa2QcSpkbYGZrbb2fY
	 X1cl115fXo09Q/ONDz6sjyRcx6SqJPpR3/hrP/B2vYqUfYVrXnAMEmkFo+9WVMhC7y
	 UPsO5rHlxFCda3xVKWp/nWrcILpLUV+yYbQky8tsvFmcwsogfALPXj7TnGf/ox772t
	 gUYbYPX8RwhWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58424C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889645435.13652.13834906827983382324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32ebc63af26f1eb87f345b5c726859f86f4c7d87e878c3b5727c844f648966f
Date: Sat, 19 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668896454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D152EEC1
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838DDC433F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670583087;
	bh=vj/lQQMwZecAz/s/XoUQdhjXS8uFqSk8ATkQf54fc4g=;
	h=To:Subject:From:Date:From;
	b=hoXujuQIZ/5L9PbMpFlLHtck/eNGgHRB4TNr9Ee6QMPQt0SKP8K70/7h6DZbyDtq9
	 yGnbHEhfGswCZavr8uP+r1rwy8sy0pqvaCNcGRjXKl4u+2oEeMEZLZbYAc2k87byBL
	 tLP54HzYo8KJ326zCA3WS871OWdswCZDlRmSpYEE3FJCyygYZNmbhDRVj4lBpvBw3S
	 tpHWrgeg/2bpEM1AHAZDzCzPwtNENpf/03vrTfuUa672QC6gzudQGpdOsHkDb7WnHC
	 ViFzjil54KH/Kah4/H/vY3atLuIBJeLZxU5/b+wTz05a03pAEdR+PiX9KHn/q/8GyY
	 ax3N39YqxSzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684ECC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058308741.28902.10165126738966731660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2b8928a32c3c634b3a00570e7a4047076c19f38a8a82b234949c2b96d8f42e
Date: Fri, 09 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670583087

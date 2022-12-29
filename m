Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0F21112
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 877B2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672291287;
	bh=9YFi3rT7T+FQIkEHX+2YtHstJaNXSoTlZFRdjNwQRUA=;
	h=To:Subject:From:Date:From;
	b=o4HsXSNrCW9E6F3p3RS7kpybKYGRlIEe8QHj3+M1C12rpOS4cYZwYIK4UB233jjmE
	 Ty713j9gv5YOa+gWkHdEGVdlN+YJnz2gjwN1yQnaetfWf45Ks9jUoDeYcnNGuYI/Cm
	 hcJSsJH19vmLdXAtQ/gH7OuuOlL+PgyBMQgcJutklQBcA1P9kqYU+UC0WvWRoQkYgO
	 BB4lT3hNsoUv6Z5C4o5DqR6e0+zfDm20HjriNnL7OGyXagkJPVe0S0ulz+aLnKyH1t
	 XV4UExGjR90IFnTEfOrdbUbUiyfZC3LF4Wu+BT3hB9K0rh2NwtXGgQPORSIEg1xnRq
	 tIte9WDBFP/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE19C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167229128740.4444.3662776293798210640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fbe5d2f9e337919650fefb8168587dc9738cbc2f7fe82b27833fbfd7e89d80
Date: Thu, 29 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672291287

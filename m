Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E38A8BE3
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 23:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4129C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 23:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676935745;
	bh=emr9erfKFfhUif2tIi7GxX2FP/QACWc+vM3nAbEOu50=;
	h=To:Subject:From:Date:From;
	b=Fn6TSXe30keqZT+eeoLQpyKAmvG6flWt1vPS0wFnmPnT3Gsm2ufGDh5BpxG0XxCz+
	 qnRFD/GClno8KVWpriNmoPKqjA+atCOoAcpWKMl25+t660EPqUFPb+cJYUxAPjPuVZ
	 n6pv14BD2g6cYxY99pUTgXaXvRHbOUzlQk1YrqSb2xfAY/z7DrhzkjPQdfP+UIZPo+
	 iR+N5hsWWKx/9HIKwYb0qpVjhFfoxZ44BKX6LIe3qojBdrPrQ08RWouN2wQOHkZOje
	 cAasYnRdj91nYgsm/IEtaH1leR+4g+b4xzLnFQZkJ3rYuZ61eYuV5VqDa0DfyBcRyz
	 CPyNVIfNjTovA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7013C64ED9
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 23:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167693574580.8249.18000037850365677191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac93fac23a92176a16adef68b40e1a8e6fd95597325bd7a71102c5412fbc10f9
Date: Mon, 20 Feb 2023 23:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676935745

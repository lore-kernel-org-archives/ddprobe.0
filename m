Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1808440C
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7264AC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664907653;
	bh=HCbkv4kRZXmugiBBMR/QUhjPO39M0ZArycvqr6NMCis=;
	h=To:Subject:From:Date:From;
	b=WNJyApxzQd1m/Xs6D9tPp13J2QUkMimldNW0O+HMd9qMARbbG8url2OkQL2w7IMQX
	 a6lcFOauXYwOqn6F16qhf8+CAYUi3bHcGl3r9gbIisUnqmNV8REfcpKKzkvmkOs369
	 di2+UGLYqN7yhkGk8oJqN3sTy2/HuEA181jxeSXDUg21tGZOD/vJdNjnvjFgxiQzD+
	 S+JVXZazzYUYeYE9Ug2FP/Uye9cAzRucZ1vlKOGdg8O9uBgd+YSQ+eAK/0PEsmyuUI
	 vwT7ATKBVFjpNSzpQE/+rJZLrSoPcwGF8OdfievqjTJSdOjzs4E3CNLTLC6A/nW39d
	 CNAsU5/Nid8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5731EC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166490765335.8776.10783958222942427711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab35ff349f8fe5cbc44dd304dcd8b88c1179e7e2dbc3a5cc865da17a920bc9dd
Date: Tue, 04 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664907653

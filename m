Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E877C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66441C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663702853;
	bh=8fvyEhWsEvnuCGX2HJAz/GX2Cx7PwuMePk5hk7iLI28=;
	h=To:Subject:From:Date:From;
	b=DMnKacxR6WGiPzhMPkCKYfG0dd4t/mqC0uwfuR34XLL4QJWpI7zkiP4zXyLoW/t2X
	 IahQw1hmpo7vEENgdiy/9wBWel/akF0dpKYhZtIsU8McRKHPINqEjERcWXngSgjGHz
	 xHbFj1/k3RW5WHWZtkNF5UQ1Zs5MuvGk2iDYuAUz9WGLDj3zD4qRz4astsoj282FsC
	 3LaBlzKugUCGVU7LKibhufl9JmwOCS8EHxf+MlhVRNZBZmPH9auyWX6HMboM0ID99N
	 xYQZYCa9Y1m3hBIdzKdHBvaJijDC6NBBz7q84CPCUvmeH3t6ku+93BnXFxUcF+ITyB
	 cEXpPdFdD+F/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E679C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370285331.574.8015390335038516455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7365a3651d3089246418ab3070a971feb369edbc9218136a8fed29541d09ed6
Date: Tue, 20 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663702853

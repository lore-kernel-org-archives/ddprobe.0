Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47E22F2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D57C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662459053;
	bh=BELnXaVVa1HPSyDvEyS/qU+BZz4FrShBKsefFr5Ikz0=;
	h=To:Subject:From:Date:From;
	b=PFRaRQzJVKHIHEKwltoCBhIXlkJipKbYV7hu8MHMIOtL2Iw5lSlBRKQhQ/ifVrwiq
	 CpjWal7o3zWfaLB2l6YnT3tcxaGMkZNXMOfrwk8bMEJlwnKt4m01lc0xaSyQtPgeO2
	 w7r/6cZas6vTWcJMTmU7R37P+i4VmPAluPmpzMhJp49Yg4AQToqgGJM9wXnc+oDm66
	 s8Aph7bcXtH7lhRm898JafhxxqrqWqyA4pqFi8354h4IAkCGXdhwivVnBXlNVdlPap
	 8+imSZzz/ntHcxMXazMxbMZn0WDFsvcWmiU/8Z/2Xvee0lBuYO+v2JhgYGfso0wORc
	 GPLBWFosdpRiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5528AC38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166245905334.22379.3933367129405320264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5771acec39dac2262fb7a8e438a20e5924c8aff9fb579f8a8ea2d9d1e4a4c4f9
Date: Tue, 06 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662459053

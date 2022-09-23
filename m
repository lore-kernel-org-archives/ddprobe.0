Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C660115B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F396C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663896653;
	bh=k7zkwnOnlPbS/Zi2Xzq0VzEdyV8wZMs/MCm91B+gXlo=;
	h=To:Subject:From:Date:From;
	b=CmeLLhm9c8Z/B82V1HFKwZDJLwvw/bw/ZFZytSIfqwMEg6b8TDFRLWdVMFyk6zC5c
	 rAMl9+MZK4LeyQnAWEWggopF4X+eFdacGvtvDo2yBkk8ynikDRpmPrn0HN4pIyDDyF
	 jydILhFiHDWCapElTC+ghSYTg9cTdGntTX6BBqrmmXbHE2EJY1awGOZ6DAAH1ZhciD
	 QsIVMzD5YdZqCmGITjAt0ZOh/M7ObDvKAUa74PdaVi90Q9qtZttUREnZ0Xvne/quoZ
	 LdkrDEOTQgdeMdFSB8KZQE96Aq2+nyi4OrqLlbBlVl+YIfR7ci3J6bRukNM4BpDAuP
	 2Tygiuj28qJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521C0C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389665332.2929.8987277820891998373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17a6e844e2e46d7f6f375846fec7689faa7d9488db02fcc90ead16ab3fc4709
Date: Fri, 23 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663896653

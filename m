Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48357E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CEE6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670557887;
	bh=JweIZgiiwtuP0LDI3z8xenr6Tae1R8vKMyGlaR+Tfs0=;
	h=To:Subject:From:Date:From;
	b=nxEkLM7DyjkoutCWmHnaKQ6YRIYMps5JHDtutDE5Rv9VLnAOTnlJbZXEH0UnnPuIa
	 Q1XhEMoLkiIMP1/PnYyXWVjRDwyo3yCPuP5uiD5k0JCoSBuu/ik7nBrqVCF96jlDtj
	 /XsFmxgSqKdYNnAmdEvz0Tj5sYIBPnFEispvjnw5swVThnEfQXEj0qnafyVODtVwxX
	 Eb7zJ5WhZfZPleDQBs7CZdlwd28i+u35d8bY0KQclS9FQnCOng54G8T1Fvn1abemjS
	 CmlfB+msuoSXHpStxDt0nUfftSJcNLQn7ZJlcUIr/iLJjF5Zi0vIOLQ2/tJKjPna7c
	 IQw5IpQep/pLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65016C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055788740.30532.10645528160245230427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f008c37a290d70f180b9312d365c74aabb83e810f06ab6d015b9accc0e6d941f
Date: Fri, 09 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670557887

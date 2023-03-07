Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F4290F
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 09:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AF8C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 09:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678180145;
	bh=emfDAG9nHmysNVAn8ZA/5OindAxHm8/Mp25KtBARnW8=;
	h=To:Subject:From:Date:From;
	b=AW7Uz5cTkCrrKnb+xdZSsmurwlMbZoi+Q3/AC38cfuP0i9qinsHYxervt8i/6heUh
	 LVNfQ/A0QkU2U9BTcvs+nYnIfOZJCYXScIHE82AS80nRK4mrUcRy16Z+elLzrfrK79
	 5iW2nscTLFQOlU58nlziQhH2Kux1ThF2loMxOA9btu2GnwR9N8l64fg2OBkfIFDe0i
	 gFVVZOG0vZLclFC54StAsYp7mghSTmOB2hNiVMekRroDItT4DyoNgbUTLRVcuB4XKR
	 k8hV0anSoGerRL5JqK1xdGxJjZi3H+nJc5wbSlGg4oWtQBDVIWhEvxgLIkwYcJVbaz
	 /+EWrd7BCywlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C40C678D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 09:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167818014572.3867.2613230575060939401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e54b71293926da763aeed0446229de384a981a063a31c5699ae6dba43137b27
Date: Tue, 07 Mar 2023 09:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678180145

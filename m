Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8C87C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D44CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668759054;
	bh=vsoorpxoK7M9KPyTzAtxpIVSTVqgG20E1imkE5Gc074=;
	h=To:Subject:From:Date:From;
	b=qNiABkjf0O/f+lt6kABVHKPlaz/P9pnTg+cYLI/+vOKKd38xlA1Q4U/yA66+yETWT
	 b1uJ7SBdJyRT2SB7aTtcykHlXQbj7a2Tl/jp42UoH0N/HJ8t+RR3xzsif7fkqTiDxD
	 049WPcW38A5wlWarhsgFhfpwj0oTL9UEpDQSOP/K59mZmqrTGoKcRwFwGHhv1Nliri
	 fvjMcDfip0s3j8+dpYqBONEoLJKd3S8wnduJN0swIuTBJYGWvRaM1+IDg5tIeXNcxL
	 Hz5PBC/LgckSyuvSeaD6V5ytuB4xz6CTZPX3H6RR/L5el0NwxSTfIk6SAtn/JZFOMN
	 xHxNwWddK/B9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54434C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875905433.24679.13167764255230215258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6ac9ff2dbc660a79e55564f4f42ce7c4abd4f6bfeec712014d3c435e845249
Date: Fri, 18 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668759054

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACB015CC
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8324C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681951505;
	bh=ZmfAfO0CjTCnHfyjgdPvns9GXVcMS44XVupu+6XUvIw=;
	h=To:Subject:From:Date:From;
	b=rsnUG/OuHFdieO6WU71gFGD+dxPk438Md/qT8YydWItHvVSaf4MLs3TBYYsArjbWZ
	 dyXBLPlwvp0dZR8tZES7dUC5hb/hOa+wbiKYAyXmmKWaZm3Mtb0EOIKdJjLsgNXc/q
	 2SJ6AJCrxUK2fARO1M6V9MlF/RoAF6tygaQn8RNmCy7Q5AQFg/HZluPnHMe8gZG/lt
	 yAcd9AP7Tm/q8HAHlnsXBmXo9GYhk8c+VdDrlvJWegVT0GIhdlnaYNbTAkFf/s/vg6
	 piErkKvZyyJUxcHE+68e6GsW7WOt6VJj4pUxD9UmQkqho9JyZl/jlCQ+BUNvNbnEds
	 QuI2/pKMTuS0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE80C77B75
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 00:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168195150580.21552.2914624385988818100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ee7ee1ae18c925d169c31119a2b4266dfd34176660b9d99992f2b57a4ff41c
Date: Thu, 20 Apr 2023 00:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681951505

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA2A392
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85396C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672722687;
	bh=0rCVroq8FgVpH1Gvnb786TU2t1sQPnf9NLsvfZ2axRY=;
	h=To:Subject:From:Date:From;
	b=ScHeeZemaAiBhsBhsZ18e01rLbjguMj58iWbfEMPltxxdkoqvjLiu+AdxzKqpGgDH
	 FklcYNzVfm/ThPin4r9U9UYrfY8Ld2IQoYeo/CFVjzbmCsgwty/02QdlTd0Y0Df56I
	 WdMOqV7BGUgntJQlSR2BtNL3bH74UbF4AdWGKl/Pp+L8FcV8Yr7Ukr0hqOjkSXGRK+
	 cYxgXXRcX/7gziKT+e1XgVQljQvjwrUPOBp6pbIL+urf5uIifM75OLp3TaXJrXGZEG
	 AN/vNRsVqXjniwVNlckkAcbAANjZUiKK+WWkz1eCxm9Tlh0ecdqMhkHItZaz1BG0Bt
	 ztlFORqSW7XyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E0DC53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272268741.6873.16193208831741509570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acfe0bf795343fe94737c18c9b43c3a887eb9099a1ee2690bb63062a98b72b9
Date: Tue, 03 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672722687

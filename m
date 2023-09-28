Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E581C27
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 10:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ECCC433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 10:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695897368;
	bh=WZZwG/OmWxW/m3ihRl812A30G/NkwdDtvyV1YX4merE=;
	h=To:Subject:From:Date:From;
	b=emMKh3uS7g7xBvG4P50iWJTZgBKzGwyYAW72NtWuO1kK4d0h1bGQeFjvSDdItuJ8s
	 GWca+O6OTLp3BcOCsAk/2kH2oPNJKl5WbrW7Hnx7CwlvVUvc6XfUhqq3PyD4kFWuhh
	 4aToBzPO7vM0R2bHYoknqYRnwBL/mvDum8s2JwyweE5iXJRHX5Gq3tsMuZBQGXjunq
	 gwdzqQH+Ap2C7Hu5Ew64l2Nn99K39H/JTWRNvy3ENjXbE1aNSzQyXVgHa90NeP+vNc
	 CzpLqPyIgzycq2gqJtH8nK0ujEnsIKKRzHc4R9fB2AmKJ+I0vI5QA3I6kYNTx7YQwJ
	 cdg4cW54uTPZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34D6CE7B17
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 10:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169589736866.15017.15185044144268551327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f7e40dcaae0f67c4e1df7645cd9a0602db11c11ca025a6d26cb785e1834ad4
Date: Thu, 28 Sep 2023 10:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695897368

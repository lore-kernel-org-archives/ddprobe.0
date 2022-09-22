Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C447F23AD
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704D4C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663832453;
	bh=MvenORPPV6bdofsgAtOT434NTYOakYcj4YnX+6YD2rE=;
	h=To:Subject:From:Date:From;
	b=p/3tQXyeOZm1qTHHwKjeMUFGXEsxuqTNecNcYsj6izFAwKcNu+FF3pYHqkTVxf2RM
	 +xUd/BlP0gZqaVkGec2QQIpSjbzv2aavKbCRnZLiu9bcNw9LlelRqjn6ufMlgfmW3n
	 NunV2shpU7uX8Scm5KWwGZYBdtM/b69UleHyKFbwmW7NRx/57iMk6gosOci1LkLylK
	 FToGC+srPqgoGYvukjvmQ/Fe1Xd5OHyFIgDv697ppyNoAt3FhOAkzh7udSYiSNt5Pc
	 K3btionWrmXIi4rHQYURm+uXCMH0863IYRENOg9UwUBdKfE7HEhP4nud/C5lryEKan
	 0pofTaJz061CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5583FC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383245334.30781.2475460042903952902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d58f72471fc3bb1ed5e8ccb2246edae33dbcdbc38ee14122c58f8d38f1875ba
Date: Thu, 22 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663832453

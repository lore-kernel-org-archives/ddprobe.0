Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D196A33F9
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80447C433D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669316454;
	bh=0o4aW+LnA2Fq0Un17Pb2ztfqObbz+O+fegid2pGXq8I=;
	h=To:Subject:From:Date:From;
	b=P/OWFsXz8pueTk9xVXpxzAz8Fq+IwlfVMcP95+sbxftlIytFbF+UYiLSc4vX/Dwor
	 ++TiMF8EL7kPCNNSb95W1odEX9y0z9N7xz02iFfTSHS0vJug0fL2TdRvJhv+rVbsXm
	 spUug/JdLuOM8W2GA5nSwLgwtuZBHep7zZPDFDejzwShN+eYq8AnSujSr7Jta5LuKB
	 VP4oezLnd6S2zQeQYBqB49tpQH8y8dnkaTaKP5ois+2vdkWCfwxJj6LLUsawMeqtbx
	 SWdKDUpVGb8i9jeHf5YlM+NdT08fXAHdzYW1eJ+Xnzp5igeSK/IddN8oGwTH70sxFA
	 eoPV0NNirMsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF49C43219
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931645438.29843.8175611185995536340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7537d1c85c35c8a46630a0f1fcc82021f4f24502f3a777330870b1bc61b49467
Date: Thu, 24 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669316454

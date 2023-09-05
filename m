Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB68CA43
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 11:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50F6C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 11:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693911848;
	bh=vsAzKnN9cObDsxnZO8X3/OfmPhTRg44X8PItDYHif08=;
	h=To:Subject:From:Date:From;
	b=FaF+AmzTIGXahkg96krCt14IJ7nELMiIBYeJzX0/x6XDYa9hUMNr101a5EbNUMKcG
	 Qlr4xPTXdsKo+PVUePXu/JoWQGxH5BaOtFimn836rhEcoyWwXalMWRrSaWVE79vb0Q
	 ibRCZumyqCURayjVYWs7+jQA9fYSlivHJJPvj7XdNeTSqEqrLLPwsI3kvvN3382l7p
	 vYLCnXbAip1tjB10l3pXfZR6K/4Mereb7kqamvTUxWXPPXo/P6a34K1czxALwDExlI
	 bDYtzF5RSK+JMHfEAuBJojszgRbazCnFVtup6bQ/+TD14Yc1scC7b3ogYxzOizwQ0N
	 iW14y+lwI3sOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B5C83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 11:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169391184865.11054.3139622227950878430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c7a04381d0590257cf55ee86ff34a655a887130234c43b5316c98e896010d1
Date: Tue, 05 Sep 2023 11:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693911848

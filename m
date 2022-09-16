Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC696AD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F202C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663366253;
	bh=bo8OM3xyFfUrH2ah75rOuodL1h2C+jDAMwEao+vlUPQ=;
	h=To:Subject:From:Date:From;
	b=JIDhIfWSxIZSDiyGR7jdQoTiwnsw4LIvwqgZIF8Su0sN7FxF5Wp6QUaoC7YgVe5x5
	 2d6QcF1MSf5Ads1G6UJLriMLCUtTMlWxcuAQ+kQA9+fc3EzrAwPutOFnI+oF5Fe/la
	 W2nZO/6Bi9283qiROu7psuP76iwoOpVWnfa40Pkc5JkEaq/zn33FigvJ4RHglpu2aD
	 XmBlHQtHw91+ZiwIGNulLS86vfydN5hRIj2XnTVZbCGVxpJCwbxXUkJp5PSrZd8TQY
	 MbmrU4lFU9GUWRmnC52X7jCJPl27bvcavaLy6Zb6NKvXTMxcG2oEFAaIESGRfqvJ2b
	 4sie+pRXBNyog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53827ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336625333.20236.2352921036551575108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89131bdaa4ee02a6226a923ac91f9530cedd50f9eaca48c2eb5e99001d53cf8c
Date: Fri, 16 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663366253

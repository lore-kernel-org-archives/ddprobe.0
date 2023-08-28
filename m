Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8996311CBE
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 16:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5189C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 16:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693240448;
	bh=MMIx85nIzdT8uwAqhmuO3U9Z7jJlQ6psp75RGSIEkX4=;
	h=To:Subject:From:Date:From;
	b=FhuNQZsA7VyzU6X1SLJHdoY6YpFpB+va3Yvcgp42O3mxAfAT8qfqWt91wv7wxiK4G
	 mipAnNZE8bxWhTPjvCkEDSGudei0xEI+amCTek/MUMSZvUajFrahDGXe8GJs4G45Lw
	 EHzHFAmkT5+OQ30bG0EmGx0TpMLoQoYd5yltNyjzYFRCWJZnQeaA88ToYijGsXdaJ5
	 T/v0LToCLnqGxuc4SU8JqWEr/8bgjJcsPwoVvrmXKmNli5xC9X2tpu2RmUGmRh3yrF
	 ITqVZirNlkfUUGKmKkjEkJL69vTXxxJO/OViU378N0hbghZkajGhS8uTm8xmotVvwD
	 bEJ45QAqrxVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A462FC83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 16:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169324044866.16105.7504768019347501064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09ad06eada6e38c4cb39e91ecdab4c7c245217015e2cbe915c25fe6071e2730
Date: Mon, 28 Aug 2023 16:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693240448

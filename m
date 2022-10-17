Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F8210EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71691C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665993053;
	bh=4jD8Xz/Ks3JIXq6XrcGGzJ+1qGUYTtXh48W2mvl3wFw=;
	h=To:Subject:From:Date:From;
	b=YGrsAsxrPOewcsAE7b5KcvC/jOZknwV+3Yoj3p2VtiivN8i9Hirxj6MEAaOfON1SA
	 iI+Kf3fp2sfBGDXB1Totk0AKvCVWF8n6hTOo9LkGZl7XdB+hMgw5f8mMzZzmIMp2Oo
	 Vb9+AlRv01vvKllpvCXxScJ7evBNIJsy794CYQSGinQrAgs0AqOPIaWPdhK6BL2jyF
	 l/WQb5mLyOaupyPMpmnaTrrsw/78c2qIHVdmTM9ar6cZp2v6298J1yqWzIVUEYzj5j
	 JXQv4rCFk8f4clHtdIivbja+qYglCYEYWZUmiB0amyl8+ICI0AKGYEff53xve7tper
	 VUxFizHXi/0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AEAC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599305333.20682.2499783195976624210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace299d5f544bb86fdc9433e08afcca80dd685a177623bba8916acdb0c86dc1b
Date: Mon, 17 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665993053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C225D372
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBC4C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665032454;
	bh=0bw2PeaCZrIjGplJWQbCtAAsNV/QC7IzBUG2HTMZqJo=;
	h=To:Subject:From:Date:From;
	b=FfmgpGXbxnYtodhaS5a7l3ClYn/iJVD5ZdDsTxq8fT0M+eFTUcUPBuHlEuyZbakWG
	 K5sOa75JeMWYbuDsd9tBAUuSUTWF715iV8e5FMAdtme9RJluZ2SiRQiNBfdZxfhb5F
	 ScE6BmP9/6y74/4xLWj8ivVdgUFfRPbsrEC/sN5OqRvySgM9WuyjqQSh7NASM8+NAL
	 JHt2FbwXLuY/b/wikcr1zZIml+Yo5qlTx+8xMW2OCrmIrx4E5AB2WZ1Q3kao3d5QXL
	 SL3XzADsWc8X9wrDh9YTf0w8g5QQV6rINX7Ykq7RVvr6pKHzIXhzZjefnnhbq3IIWO
	 ZWSxZJ5FxJIWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E3CC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503245332.16347.18408643832047164390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0137cead361bd3edd6aa7ce6bcfa4eb89e9ce812d486b8ffcdc1ca511b75a9
Date: Thu, 06 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665032453

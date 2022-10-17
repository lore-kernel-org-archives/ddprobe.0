Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6093EC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76853C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665980453;
	bh=gZF+ag8PpGn+CJ29l8CB5uhmhu7nL9JfuM5d9bL790A=;
	h=To:Subject:From:Date:From;
	b=hnITa520lZRvwA2KryievodhOdZ9IyG6FFS4aZ6EXUM8pnvMMyhTOzYPbQyIGj0oS
	 QvzY4ITkOaan3T8E32TMOUyeN+WZrpbUFsctnDVvQbgWavJJl1HG4jfuxoddFGYv5q
	 zwGmmk/lZLtlGdsr3gv0xxTcv8WWI9qwM4FFPb2ooGKgH1+rKFGCn9RY2mnKpWg6vq
	 gVnuU7oWQazRnqWUKm+DzL/ggUF/SlM2r5He+vBPcXo5t1Zd/Ensm0C9LBJu8wq3U7
	 omzo1XXZtZy6ll36Kq/RxZRpEpNtm9B1nC/TYo69NQAcLB3NPPLtOKKajxRJgYe+Ek
	 9cfWwJfqKeTWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D7EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598045334.28464.16931827926087008966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0814633e716bb382cee05d2668d37d93ad5d12a1c907414866fe09c51a3c3d65
Date: Mon, 17 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665980453

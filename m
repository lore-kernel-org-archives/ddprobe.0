Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4972379C2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 22:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE48CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 22:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680992466;
	bh=G3UvbA7fG+iCIQZyxLQLBBfui4HK3eaT3JaPbeaih2w=;
	h=To:Subject:From:Date:From;
	b=NEIiXQVwiYG5dMHM/ZZj//4QVVmlqjUjUX1Z5UVHAvf9X35N6z1rIil/Qqy5v3OM/
	 v69oVr7rK9ohOrdYiX2lxHtx9PQrEB/O105WFEe0GSNG6CMtOep/mDsOp4W3zYRY+3
	 jHn+vjkGygb4iE/MrT33ZUszSLkq9L8yX5Gt9qdjyF3/icozBK56Mq+CVLOucgXFez
	 kbe0AvRv+7pt91rrY6d5u++KV+xb4V0VUKZtqOnt/VXUKiregKpsYuZEpVXLi/t1qs
	 TRHF10pw2at0XVMs8Rvv1T5Bth26ey79mGG0YzHC7RF2SeyeC5b3IrPxWY+PozcA4/
	 9UKRzYXCXcBNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE88DC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 22:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168099246577.16539.1448489971184236843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09be4bc3e30576f3220d91293d7bdc3f159a165f6bf8999bff09b51502c8411c
Date: Sat, 08 Apr 2023 22:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680992465

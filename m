Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2371FD7
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBFC4C4339B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682465766;
	bh=hydaTx5PFQM1VAAhgFNj42luSR5m7zpoPedSYMUTkHQ=;
	h=To:Subject:From:Date:From;
	b=tW+ceUKpnA6nhFbbUee/0pCqO/C6DS6uTzc7Lvt4kz/R2d/U3teRTtvPGUWtn0vm+
	 kj+/AlPpoYlXr2SHk7j7JzMX1GnVSvKcDlAYsp+TB2uSf7yqLe4LlVK9qeAuM2hHHP
	 IbKOA8a83ob2UcNBZbGZEIEwS0VuMAyUcF0kkFU6IvYfZ5rPqy5kqWABjJfSuWamWF
	 KaqH/miyLrgEfCknhE6MMhjmKAinRPVPwE+8h8snfkJhT+7j+DZJmnEImkw1604gO2
	 xJ9oKOWzaBQbENpe90/lKNw2Pwuc8P/gn5LO0px4kZQ0vcyziBOcT7KU9dn45VxZYo
	 JudPdvh4x5Kng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1D5C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168246576582.7334.11958084788306281235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0feb6d12829437d0f5d9676ecaac9ce484d6bc425314f25b59265e89afd8cd6
Date: Tue, 25 Apr 2023 23:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682465765

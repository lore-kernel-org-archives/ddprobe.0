Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5E6200BE
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F644C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684857786;
	bh=x3Ht87Blx6KqPojGj5j3N/7T5q8bBAsR0APTa9b53/w=;
	h=To:Subject:From:Date:From;
	b=s69ebtTsDajj/F/ZRUtvLab+dis9Vzz1cByxcDH7kUvwWxBH9HEn75vHuqMvvREjg
	 08LvY6wnVAMd0kXfy2FKVfebodGnz4Iq5s9BeUDPYBytC7E1QQKFatmKbRteGBUQDu
	 NuYghJGVNHtHobIvDcfJRdC3N+mZQIZyAQ2+lz7hl60kc2BuNyDT3CMxGpzq1DDOMM
	 kUgK7pSDtvA/ZpKoCaZmZzjojMhLBhlBSJXjg7l9JXmayJV5rzdaS14nEAxS/WduXj
	 JIonucF2lqsPy3qcKJ5vyT2Fl0tYMnRxg/gH2xq68E3MXK7yaHcXthM8H+JU0VrufH
	 4Io6Qe1vmxDNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F7AC7EE23
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168485778584.23972.18025781614701217805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f233ea9b51f17205cde6e1e83a7d3c15bd7b8700d3023e4615a040375bc7cd2e
Date: Tue, 23 May 2023 16:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684857785

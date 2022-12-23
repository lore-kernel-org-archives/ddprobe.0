Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27F68F63
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790AEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671807087;
	bh=ihtODG2yQppgPR9eN1dlQqSG740nSQE61xGuerSskYQ=;
	h=To:Subject:From:Date:From;
	b=PZs3soa4ONUKlK9VMbdo6kzLmqo/64n865zsnnoycCdGL67HrsRt0qbUFe8iuwCpA
	 v9tO4iVmn7rbQUihFvrl0WM5oEWnQDKKZPkMzpczaR5zzV8EjhnwmEN0k7yskeT5D6
	 KnOBUGLcX+iVZ8PrCHpSIiPX1+Sbo5iL9pNh65yLWxfKYrHDieX0vkt9F/dNxRKMH1
	 VWXKQQ9S9zyQK/TyULTTN4YIEpcqb9ZIwJ1BVwg2zFpYspZUQG1bGKOe0KEzw2M5hi
	 jGDyav+pA5tdKXvYvMKgg4FtN8enjqM/8gynMStHZymQ1O04dNbi2jClL/7XZzf0ux
	 R1xQK7kX5gUIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F53AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180708738.26182.3350168801869512223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b333903a1553ca8dfd5e3412b6675ed001aa46f73375a105cbf728bfbc39817f
Date: Fri, 23 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671807087

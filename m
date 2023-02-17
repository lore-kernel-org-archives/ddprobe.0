Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD40366
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 11:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32EFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 11:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676631785;
	bh=iNCwTx2LXMNI5haSH+TmoWXqEGfT3GYy8UAzL1mcTeU=;
	h=To:Subject:From:Date:From;
	b=Nlp3zyIK0VSKKGKA4SmQaWz2KFCW/8o2YLKVxBTh8wAE+PoCgZ2Hsm04psCaDM5iv
	 ZcW0+DNGIHHeKMynKvEVJ+IscXbuX6t9YG8UnxsyY3MwQguAVhdjzK1qVgL0I02uMP
	 BGY4VoXhKofRy2k4ZCnAdArJfmh/ft0aqT2jJhzH7nMeVfYrhNo/KGLfBws/6U9jlx
	 nJbd+5HGC1ntPhNwzggPxzkrNAjjJCjMUGe35HrFKenjKmQKcgqepiKgzLh0pVZFFY
	 eBMuvZQBW7kLrHoLVPx9lzufm6B7vW8LUUjK8VHr+b0ilqtOsE0EcVhu2Ydo3etO8l
	 3qt9bWHSdZ3cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A0AC636D7
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 11:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167663178573.29819.15464362378012125172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9171e78f71333e09b54661061f5f32d48341e748c745269f73092f6abb8859a
Date: Fri, 17 Feb 2023 11:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676631785

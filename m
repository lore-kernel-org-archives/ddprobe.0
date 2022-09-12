Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF851102
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE6CC433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662993053;
	bh=sgmZ/EU41rovBCRoDEvyChKMlI5+eEEVZUxz+ceGQGY=;
	h=To:Subject:From:Date:From;
	b=g4uV1lCcdkQvFKTk3soSMIZOOLK7dlceW8nwHN6pEgAdtX/eSBmyysnsU/jyZCSKA
	 8BEi8mvVfekSNUsKVzTLTSa+y8+YPRVySkkB2vJ9jHdLxX/IVUBW2JbEt8NwpgiIyC
	 IY9NLLSzYcLCuoFADm99y7P+7IVOpQtmwMdfzjHgJQzb4jF6mdQqfbGFYD/JdMkDav
	 RwLZdc3kqCLP+8UPPGAk5KmGy3q8siad/uDxExYXGw71S8VrQVXNMeZ2hw/GB/c704
	 Pel4ABqppuI51jxBJ/e++M63Mw2UZIM1shUHjXGIMo4ka4T2SHM0ZN7GkxFK8SokiO
	 SopJL8+IzdudA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52092C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166299305332.15626.13620661497532642168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572c6e41277d95e2ae5193c98a6221f7f6a0e5d9cdeeb0edf0d8f4a5d5922377
Date: Mon, 12 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662993053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EFA2561
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E44C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671877287;
	bh=9D0N34WrW43tJlngadzAWcQFp8vsFbX01m8riITHHcY=;
	h=To:Subject:From:Date:From;
	b=L7jYeGEHEThyfQrzwiD49JhvdoqxU/1b4C4i7mAH5IXxit5kHfikBCM+aTFcNIX5w
	 Xc2ftrfDpdJweUZICtyNQqGBiyjnFlR4MIIOxROvcrtTzuFlbN/ShlXcmWCZqXZQXD
	 qVe9fMsmK1ASmh8ciBs3r81xXm9I9zYGQ4CSjtgyEEQKSQFLbeIiX0viYM0HFUrfek
	 rS3kR/yuhdqXGVeHuRKINoHpRyltPP1ezn/qnW5OydOW9WkOHj29kh+iyN+VILAyx+
	 ur2l+9DhvHSgERCxwPw9TBgYEc9r1bU76qdZbStLHBxvmY2BcfKDA+WdRf3rBOd3Hh
	 LnbD5bbvcHNgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641FEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187728739.6422.6099354206627157816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ea4e67e620eaacdd3bab545886268a2eb9c2ee267f1fe9a8992a772cfed803
Date: Sat, 24 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671877287

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B587F17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F692C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668818454;
	bh=RZbx0KFOx+B68bhZLWfKeER9072TF2d+sRYAvEXt/GY=;
	h=To:Subject:From:Date:From;
	b=iy4jBAYHidqLAFbxiBPUqdwGndDa7GOfqH9QcZn7Ab5JedPv8UWqet+9tfoyXgHQS
	 T8HZ8+YA7pd8wktF61S8WS+cLt+6s2BZamXQep/UKZTQvX5l20sI6wEAh4vQnK6plm
	 URoQzaUQPhtjeBrkmV5WgqEL9omN0XGa1N9W3DzWLGRWVgwFusQDpy7F8QYfnVKFal
	 33sRkNgYxe2MpCnIp4PsRZ7TzTRWLgwFpoTU2YD07DUcS5j+FmCz8+viO0ua5brV86
	 pXpyCQGHlFH/b289qXDbM0P7RUPxdPPtsoKUT+fNjli1xgWzWI/FCBRWJTNFUmvsyZ
	 3TfU5LZRuyKhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B06C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881845434.26151.16673363133731189374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790d212c106980e72d2735757b5a1502374f8c475fedb52f0fc3cb175472c1e6
Date: Sat, 19 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668818454

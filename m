Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BAC65E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66807C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664268653;
	bh=fXJNuqHiS0an1ywQZuMQlceLwI3YBypoQB8F/Ay8XG8=;
	h=To:Subject:From:Date:From;
	b=XXOHU+9gGQSBqCjYwXO/hWsR1us2WT5HzJpQKwrA8KmUTSfPB7Bw9yOadEh0klpzn
	 0rO/C62hUTY9jq4lMzAmR81J843ni+M6x887x/VGb5ovmFsPQqURTjTiAVc3iCzWky
	 V2tg0rdEEzkWyJqmt2sjkUDlkkQZnoyj4vtjLpD9xGeDV41mVPQdjtCwLAF78JwQlt
	 b0fKywQAgVuKj/1VpHkYGldA5vRxRu8HhkAhIVw4qz2jkEj2tt5yA/neUqLh39EiD/
	 3h4MVCXlJGrUEz8v6uFWYWdk/tqdTYx5uzlGe8MuykMYa7sRr3bw5CuyU6i+wN5jo2
	 Hmz8ifxUDKTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD03C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426865332.24709.3904732008307042565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d34eea8ed91fc406a7951e8f7c13e230dcbe36106d872bb443cf9db665f37bc
Date: Tue, 27 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664268653

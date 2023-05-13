Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8992262F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 21:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBC9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 21:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684015085;
	bh=Oje1ZClu9xIL6yYDbajGMaqhMDpQPuU+CeEMTkY3kNI=;
	h=To:Subject:From:Date:From;
	b=Kq4CHYrCYMteFdkE6amGkhCggqH4seXE4IgrDsky/tIloSTwrrWMout/ZxW/ckguk
	 SJ4oEPvHUl3QZcEEMG9At0ebVzvNUsC77caFFQ12SnQtqdPX88kkLUO5YwBkBzkEfb
	 dzuJk7GEdxnJDltk1GpemwldC7vlS12nrjF4cmmCZ9zri1/BpCdMAJedyhDOVbbyEa
	 70mcLx5KpLyJEX7g/0/Bv3ytkbWqmIYO3XnzvDNUV2FERl90vZrOZH9YYHTrGjDuKW
	 l47Kbyz5sxwUrXNh93Sx9W36ycJ2Mkum9A3zFttM0XZlZLdE4J6cEAL/VfQU89TTPM
	 L79hHciml8Prw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DA5C77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 21:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168401508577.29496.17766283718421361055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd66db8e57b42a7bd0e9b51ea08eefaeba19233f5e06fceaf9596292deafe55
Date: Sat, 13 May 2023 21:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684015085

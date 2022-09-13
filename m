Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA8C66E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A919C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663096853;
	bh=CMzH92hYq96Dpyit3cbOhtKQD0YBYvhi3pexeGh5O/Q=;
	h=To:Subject:From:Date:From;
	b=fp7Q8w3ooN/yef1iuUFquE5TuHHKA/1yMdcVgwa8uz/oyc5TV9/s4vTdb8JYjlMNz
	 nFObGDXXxhvtvO+1g3gMniFIleAvu/1i+7CtPQg7YGx0z6RvkaVa1bJSQMkP96armw
	 YQxCgfFOCbgsp9DCDWTaApMq8/usqWNwRnI5gE1M+AqsaFW4OdrnlPTw0xtOmkpodL
	 U8SLg4uiOvLSunGTbUVkifZ2OeKcLnNKj2s0a602RqA7+1vkdmjKosdjXkFFg3P4qw
	 SdJ6w0AhpajaEbChQnOKRyIyfa1A9bzkMlk4FRBY0PiOsN9Pc7OgnAHAzh7GwdaNhK
	 ezInD/A2wp62Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D72C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309685333.26998.16775977049362169815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3bea0a04c5177f0a56468e9f7586f05e131d5db00f8f85ff5ab434749129535
Date: Tue, 13 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663096853

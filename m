Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE75D4C78
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC92C433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668435654;
	bh=/fvl4acZ4C6RnKqEHFgS+BLbNXrKI/3GZnUBOZqoojk=;
	h=To:Subject:From:Date:From;
	b=mRORWfiMAIE8DEL02hSlSgrfdNLZQDz2d8/E62Zhi04Q97tNoe7FocJ7rS9SaKd11
	 r0yba01WeUPXY6Rq67MNks8h3iNfuTXq8vtSl6tY4alPPCZhVZ0LVtaBiWS2P4LdjF
	 VRME5vZXZ0efzWh4zzzZH5QHQWN1I06XCKQvQbl0AhJnt2QjwX5oro9w+dqVoQVExo
	 cjPzXfdwazTanV04YMu0abi4rwhEgdcCt6H/k10k3XavFOjXapzjwJxaH1EK+o0/8c
	 W5jIMifmrucbLX0no17mI/sD475JDaEs9ND2qgtYDidFaCLQ+xXMMVSSVqM+bRqnHM
	 yZRoQpZJNXhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DC9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843565434.27339.605408851671774749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041fd3107079380bc291893eeb535ddd1271a8ebd01c6857ea094a592c8bf756
Date: Mon, 14 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668435654

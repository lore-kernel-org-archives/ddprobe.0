Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624143C3C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB691C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687633988;
	bh=pRJm16DffhrAaNDsdNxZRTmO4g5PzT9QhMvvW7DM5Ds=;
	h=To:Subject:From:Date:From;
	b=dwkmru8jao+2OcDXJ7+RjC5oXoMsO3PuRtOpyVPMCk576cZ+vCJbhGlp6pqrKc2id
	 yGqTMnc4EDs2l+EkIYwaud4uooc9U+Z0sDmZO+IRCk6dl8CEjLk+BzMMmhhUDEK/3e
	 49YVdU55LiypXbVZTF9TDFs8EwNpZ3iI2uYvB4pN9cvWFrIs0q+nAK4Ms8rzotkW/s
	 uNBmwi0cwpoZXeTOATD6N+6fggqJN5rSyA3YobT3DrrLiMX70v6JFVwk+yKS7D93rX
	 qhDv5LeEUjLykJoEamneCI6rf+PTywA8ajeyNyYuZ/dCDpW+VXeNeN0lt9ggOweTCo
	 3p1xKZHyHJS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE95CEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763398870.9285.8303940713161355850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507932a3082c1f54b287fa20140fc63324e65b8efb9b79ceaae1af004d851877
Date: Sat, 24 Jun 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687633988

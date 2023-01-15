Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2AA8A3D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9465EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673758887;
	bh=FA70niXBgjPnTPrXZHo9nKPNZntB2gfzqXtk4bn8Zxw=;
	h=To:Subject:From:Date:From;
	b=oKpLkI4tTFLs14kq802A7HFJTsAHdSXdqy1jBgq5WOv6gtZPCr464EaDP5pP5i/JQ
	 VtyR2tCuz/nJ4OAzG0An+wOF7gTHP2tVAhwa0/Ywo1c35OrIgidJs7ky25+8HnjVFA
	 jo1oepbEL5XjP8rNtR5owBmzRzpJkdapGP89Q6pKxpomvh4MlveBtB0Dq+v+waCUhq
	 AbPt7K7S9YTvLLDfYASnRVq0eJ9td+LRTNFI52K5hRdqLnr8vb6k9fMe2TaIKfRbWV
	 75RaRExGzJ8LTO1rgOG8W0Z09o2WFwZBBdR1zUAL9haBOQ2xUGGo3TQmSuAIkzcJbj
	 GkwdtXgLpKK1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 759E3C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167375888746.5168.8259358760631568373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85349c4071081db720c89b3008147c233c65c7604987827fa9c677721796a788
Date: Sun, 15 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673758887

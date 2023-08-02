Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1188C13
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F8EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690990328;
	bh=JAfAAJO+UQgV+6hD250+a4QA6OJVZ7i5uq6Vu0LFb+Q=;
	h=To:Subject:From:Date:From;
	b=A70n+QfErO1uWHgkoXav+IB7IcCtjjRVuj9yCxJh7qiwXuG9WjWYuUb+JkMpdJ3wd
	 kcqRHi+FGrWhBDroc1xBDPmWy5Z3oU7NLCvorcHUjzHqM/978tRLjENiXNLcf+f9jn
	 KlaWfsK25Xc7SuZDgQungGn/yJXB7oKILC03lE+3pkxg9hHYlclvlAHxN7xrOKgWSj
	 XWO//Ykt+ndLXaaPoZpkvh3QOtrBXIu0mBI614WrLBOZhPtzEGhNcrk9KpxonLrFqw
	 aiWDjEnVgCoNPt9ugASKC+TBtgHd6NsZ7MjrvQloYhjFZ6fodc13SH0lrSyZdtKg8m
	 UJjuQQ4YoxD7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A471FC001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169099032866.5741.14374799586907253356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d9b850b13a5f30c728fa5ce02aa9e38b976b473d12cf5a96d30ba540deb6f2
Date: Wed, 02 Aug 2023 15:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690990328

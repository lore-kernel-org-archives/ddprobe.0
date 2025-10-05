Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408AAEEA8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759672794; cv=none; b=FQZxjwyrdyNNYRViYVUUgyK2e468E/RjKTUuispk9KwbiPVG1mDwDO+SSYHRBLhEE8BbzDLgx1t6wTV0FODHLBA8nA77xTQ2wHky5B+RJs3shzp3xWh16Bb0DS6GBAj3WOQr3jSZusdJpHK63w0upVNjmwccUg0sS5GOyilN1mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759672794; c=relaxed/simple;
	bh=fGFif8q/+Rq7D8HsvJIv2u+6v78Szt+tLuZY7HRzMdI=;
	h=To:Subject:From:Message-Id:Date; b=aPn6UilzdWafCIWHhT1aTgA5lVElNW8o2PIDVwca0vuqwo3Bgew5PqIXb8lLnnHJhjzd2a/EAevfl+Bz2GAWgxfrESRnAIx3jGIatnL6qVXysJ59yy13GvBkJDfmNsVo9fLp7iG5h7GV/zamYmWFNV1yK6ZPaaK00AwowBsQY1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2SVOSD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2SVOSD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D6C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759672793;
	bh=fGFif8q/+Rq7D8HsvJIv2u+6v78Szt+tLuZY7HRzMdI=;
	h=To:Subject:From:Date:From;
	b=L2SVOSD2NlFP/gWOzyqO4zJfyY2XK9+l7vREmGlfZ8GyKRZd7bGOen9n/r52QxP3I
	 fbATF3fwy1lXBFd4GKMRNo7dafhKTU4WclyQDV2Y/USDg6+Y4XeQfHi68egdFderSM
	 u33wdrtkX1hFP9akw1ELnWOI8AweC1qcIsl9SYBPNJxjBcxHpUbAoea7XfzFw/SYs+
	 kAakDpiFcXcJgk9JUOYWxIee/Ek8955zkMleSxZqwzGE6ZUAAgW86SfFYxSO7Iq9L4
	 rQck9L6zz+1hNOx75QCyImyAe6QDNauWMgniTPn4BTDtGZcDA271L6gH7CIuLm154w
	 R0s5jBatp5vsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C7CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967279358.16341.9571997279411925525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d2ec01591908603317558b1ba949cc02e6a19b9b93fa3fc9d4555ad8be54ed
Date: Sun, 05 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759672793

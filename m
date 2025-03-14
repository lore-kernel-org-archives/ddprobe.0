Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6D21A83F2
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741963734; cv=none; b=piXsBRYkP+BbwXV4M92qiNAoPSGv4Wg+W9O55PfYRtIj9GAj+ewwNRay80ic6vHx13tRcLMsxiLcM9pkIZT9QJ10brQFhjDabhy5Ep9gCac7I6J8flO4CngC6T3dGJfHiqjLreuN7REGR9zy3n+7DqZb9biW+K+mWcqite68+xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741963734; c=relaxed/simple;
	bh=xksdtNRgjp9vWTvbCy65t+OQfOqsZM5hpxJHtTygN+M=;
	h=To:Subject:From:Message-Id:Date; b=tyd7XyI8jYetKleAI5IpMq1BOkmXAgFRNDp7LIgYnrQcx2/YLl0Fbkl9DwHIfKS19qGGGbh7dCBCjxVIl9xqZzjnPa2Zl09/NlctrzmOWml9sCoSuy+cAEp24H11gkokIhauy9Kkw/Hdv350oG+nitOb7Ts16ZgsfFfShtdRojc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQmNe3Tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQmNe3Tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE57AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741963733;
	bh=xksdtNRgjp9vWTvbCy65t+OQfOqsZM5hpxJHtTygN+M=;
	h=To:Subject:From:Date:From;
	b=fQmNe3TvS1qIi3G7648aLqaz/r32Z1UHcyaGf7le9WTDAEjt84e67faoBxBybR09w
	 ZrVfjFTvhJ/xZFsbpD1IWNKjFcVDOY1i8AENMa7XfX5GVUgeVwaa9o+m2TggUUYcJE
	 0T/jzHv+nUe9oXMtHkYCBvFIznQtBo2brGkdoTY0KH+gI7e0WVec8uG3/FdCO7rnYx
	 EDv3qOie43HEXbTgXGOMCJHWYk5854EMZkEsJw8mlGn0bD/WlEYqVxiK8n3xf4LB9u
	 LebhLo8dqwma5oBaC7Hpih35gN6ImdxMtvJOPbO1eaj6VnrZbEUZ69/sAalo7ZoHBp
	 4t68dS1qleZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E9C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196373367.15007.2486344540277690939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0324acbba77846ca2032df6914fcf8e0d0dc9dd1479554540c56d8f38352254a
Date: Fri, 14 Mar 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741963733

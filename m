Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0203D1474AB
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709050697; cv=none; b=sIzOQlGnrdHDB+xg+tOr274xffIMyjJB+Rsy7mtmjw8jXnfXvxhSDz0To8TB2d1QULbFCUfvOCgXZEeF7414g1Cec0ilgPzC6Eai8tWFwxdGbxdrfTbQ5DI/+Gm1TmXPnNh/Li3MujpYxGSRUUnNjP07F3bBcIspljKZJZbIHd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709050697; c=relaxed/simple;
	bh=5ufZhBz6pCDddOg8BSFZCxRv3gza0XilnsRiqzDOKsg=;
	h=To:Subject:From:Message-Id:Date; b=TYS8fBK83KcldeRuPBo7m5KKbGLiUfFKJJ0dq6eXV26kml8HFWZt0PwpU8eUy2jAec8hkhijJCybrzi4ZBD6Kt3zCrIqWWw5NEj6wgulKEZf5zary002BDlIZrTjxUm/3XeQ+9hjBF9q45TvxNdM7nYy2agD78JVr9tQKsv55mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvDcypfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvDcypfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E442C433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709050696;
	bh=5ufZhBz6pCDddOg8BSFZCxRv3gza0XilnsRiqzDOKsg=;
	h=To:Subject:From:Date:From;
	b=pvDcypfdkSUeUj7wU2199BWfQ2m93nAKDf1/qV+KJYPIMq8K71nB+mO/Ecw+/x58I
	 Gk9T1IggnOJx3LM2ttPaSFWnTXucro6kFze1P+zeickpsfu0IHCrK8EilfohBkjHhp
	 gUXtZVCZi+JE7dP7pbVlBuDrUG5zq+kbmfQSwHwUsK3ADIQhZTiK+83yJ+mh38w7sr
	 PoAyjtj1H4eHWxuudnCNMYNZE0z0zbxBlIZSZXxMEqXvsU38aS7vZbKTc0X71Oh1JV
	 DZDvLgm7c8fAVXUI2qUBgNv2ijzMVAApHidoatsRI7YtTC2lQdl/EFXVH3SXP63q3j
	 aTRwHFPnmRrAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65322C54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170905069640.20484.2715028683794504844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876b2bbb7e90601fdaca2515585d16c4174b09c3fb6dda6396e8aa2f1fbe3cef
Date: Tue, 27 Feb 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709050696

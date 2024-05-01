Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE011D6BD
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714547543; cv=none; b=QTGf3EbBSz37eNqKhfwJFPZT5uF4/UY6mokkcpRiA8C1013u5IhGPkul0sEtJsXddRKWd1ibkDofnr3HXYXfrZoaET0QE48V68FnoABZpBUD9RcK6AmRDYlV/3crWGfmXg0nt5ERx+CtfE+ftp6I+XQcUbE1z061NX3Wk9AQ/Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714547543; c=relaxed/simple;
	bh=K7IQ7WZToHOTP8BLYGieuFhxCVJ5TYJDmVz1ZyIMB9k=;
	h=To:Subject:From:Message-Id:Date; b=rdSZqgjl0OfAYD9XjmWdk66TpbPrC9L97lG/MvN6XIzb0qB+DqDf9NrUOXDgURr1xhmvRUlTCtnSQEw3EJHto7a4ZvGJF5tQi1WrXsduEWzuGkOozxEVU5Rl/Hnpx3FrYGvmI8iD8fOrLoIRriu41UdudSOozr3UHRFh1k1zeH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU9VcAi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU9VcAi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2BCC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714547542;
	bh=K7IQ7WZToHOTP8BLYGieuFhxCVJ5TYJDmVz1ZyIMB9k=;
	h=To:Subject:From:Date:From;
	b=tU9VcAi4yWkfWFRTRfOY6a2ptA3F34qY+1Wqp3bGsFNLnP6/nsXyHIa9yOhuLPVg5
	 VoLrXCVFrUGi0wJZ/Fsxd3kYI3WukfAgoOnxHMa5FZ8kWTHHFOa4UPEUG2AzyJeB9L
	 vKhhnR/BrUt9KykUWqOwSjbOI7FNwS2xQU7TbaT9RytalBm71QxfFBUq+91qnSjQqV
	 BJZcSop+ok7yWRRs9vvbLDVxzoVdZY3yBN/odKx/VLNIARKUiEL9f5C9V8hwUn5E4R
	 wV++lQlfur6sm7WzF+slY5wFP+L4DxX5Yx3EnBgLEXheN9qJwaxSye+cp3V59j8KRu
	 0bVj/m7XKBjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC31DC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454754276.4242.14564752264039013308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978a58c30c68e7da12b4d559699b46883bc6fb0c52f280c062d72688355f227d
Date: Wed, 01 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714547542

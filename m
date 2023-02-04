Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8C9163
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 00:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE25C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 00:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675469765;
	bh=zLph7T8thmiK96JVI57cOsuBAMOtTNXgHxz3FHV3Gfg=;
	h=To:Subject:From:Date:From;
	b=eDcB7rHYywcEvzS2xehyej4hcj5rwmUaLhwK4BHask4fIyzcYVP4q3zZMEdjSvCyE
	 J6NwT7OsQQUD6TLgBeJTAOXy8iAYDtraFufuALvoptwOnnhDTu2czmm5ns1ehihwOg
	 haROH5HGH0HxJCxI3r+feqOve7tPEM06x0MmWFpZpqYK/Ei1481H9aBbhKObopXFWq
	 ZXItXtHelK0IBM5vszO+Qs9DX4fhnWYrBp/hH8nPuaE72S3H221V2uwmM4j6sLmdnX
	 DZ2/HPXzQCqaLE8ggW1dZAzt4UvRJKbuNevi8mDfeYFaf+C3fibstL5hxxWVmlPz8k
	 mlfpO4tsSotxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21E1C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 00:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167546976578.20638.16705115751373452150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6172dca7f6ec5ffd0e226c0cd1240a88a87a6a3eabe63a9d13d4ba569bb9d2f4
Date: Sat, 04 Feb 2023 00:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675469765

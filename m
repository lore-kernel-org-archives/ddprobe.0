Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BAA24F4F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72350C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668189054;
	bh=t19Cqkg6h1WuuLyj3CHqD4UIg3l+VFE+L1QzhlvWn14=;
	h=To:Subject:From:Date:From;
	b=SXSW8C2qWjDThC2ZHNH7ny/z1Kd25bHj+Pt4O2YwGg3ixn4xH17+chVzsMGLjP2YY
	 wc4moj6c00i1ICiGI2ZI83xfkaMF+iq+pBXbh/9ppRpKTORqKsV2T52vyPDzUaYtsY
	 +XTtGZ7543USn9u4Ttzpgv9PnNO1vTaRqwSjqirmUz+u0rXvQzwEyd8s93RrzxFOby
	 461gPXIq/JPipKHkqp1iYcuZaNVdkBTOyfuZ3QvieTLO4rDkxrLgSKee+10CS/OQYx
	 IYf1ZXHTAVD4q8FcO7xwit86oZMpVMCkus7VxTqrWGo5bIqWw4NOjxDjEgPEz0A60A
	 xzFapGqi+ZyNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550E3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818905433.501.1022870468312433260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5537165786c98a693c2c95545733bf899c3bb9d6e2712f3b4ca28da6b27fb7f
Date: Fri, 11 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668189054

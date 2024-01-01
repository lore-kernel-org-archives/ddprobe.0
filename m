Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1B54435
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiaeSkyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D146C433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704118096;
	bh=JOWFto2TCTB9KeGAXxyZLdPZw6auhpfGm0SxYkOTD9s=;
	h=To:Subject:From:Date:From;
	b=GiaeSkyls0eMq4sHvhsRkOvIfU3xmbQGR42eE71rJn5O69HKo1NpaWrKkZ1024+yc
	 tP2cCe5gP/RMlPxrETRzwhQTeIioWPoSgVmxXKm8NZyn6Q2ncXWWzFHXSGWtMLw2bZ
	 02PY6Z0ROb0kKJZGFp6Jsko/++b17C82Ra5h/lmoI896eN8J/4kiH7nzFfwRobU6h+
	 Vg9JhqeZhjfgh1VrpBywen7nGH1rotBnVdSL1eGEJQFKVBannzPkuOzPzrNQWxMZ9O
	 GSpU1G2R0WWf0BZJxM0o/Bp3Y1po5bmtIK0aHM5unBFOYg9WqppXKBpmwe6ZLBZZAI
	 zrkpi8g15ipLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E6E9C47073
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170411809642.7078.15006604465920925636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88733e46eeb3be42a492912e1d8467523d3c85c2610c0c4b2a33992099e0e373
Date: Mon, 01 Jan 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704118096

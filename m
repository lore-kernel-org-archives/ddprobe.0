Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF6434DB6D
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776514654; cv=none; b=b2f/beAaOFNrGgc2R8/dANL2iHveDWLinuk6JduA4ULEHydwqHsRVBcxsBlC+msPTne+xtgTogi2Qr7R0VpieKeVktfdSI5g7j0+00xNIdX4GHO/rILKdGvooWTl/6hHt7lrzGrKZmg03Lm6AL/KSCqzt5N43UFPbECkHCQrq08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776514654; c=relaxed/simple;
	bh=a4EOINNIdSuPKTZ9CNULI3FdO/tpiL1WUc5zFic35g0=;
	h=To:Subject:From:Message-Id:Date; b=lIk8P3lduHwVKoAM6oD67X+rLTKxPqe/jJEkDVujuLvk68ATieIF8AJ5aSzwaMPqjKnsAmKJwgIweWQTE+Hn9UJ+Ea81pmJa2hE6awaRV82hhEbeWPujOX+UR0a68CxacZuWSg8I0ER8UIcjWgNDNM4U7jwdSx7pfjw/TAmRgG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwiJZwRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwiJZwRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C074CC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776514653;
	bh=a4EOINNIdSuPKTZ9CNULI3FdO/tpiL1WUc5zFic35g0=;
	h=To:Subject:From:Date:From;
	b=OwiJZwRYu+vhJZypyNy5A5xz6gNWz5Uk4PdL+h2+rCbNF66FvJBHZ/JN+Y6GF0Tao
	 /L+WTs34rHbPL9qzt+1bdEbO3u+OOG6sBbxdebndf/B93wu4YHSNTSsH6MsvJa2SVj
	 yUpPVVtEkvGJSxrz4aSnB4qW0uJH6yCuc/bN/A8TZRJB3vZMgkT8GqXB97uPl/TcGN
	 nycRSaqSG0fnDGjXcO7Ow/+xnwWBOEK6WnPsELCDMw+hTokei3n7y6Oc4l0FOklELp
	 HUk3MqHj8zTNy2BOEl3BZx2j426UDJv0WwTtWAXYv8bj8M++MS81NYxVnW/x3bIR2s
	 Gg+/Ut1W3N7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF35F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651465368.23046.3412147304767406414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67fb9b380cb10c445af47daf36b6d3d43656061cfab10ca43078bbf39249225
Date: Sat, 18 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776514653

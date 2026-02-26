Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D27E4968F9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772121894; cv=none; b=m3KhGGu+TnfyC/wb8TrxIHo5zBDBolqGG4Y2p6LV3eL+lXstGoBO64QmoVpN8+ZS+u5OV3t1vWMK3XRA2vnC3jtc2cEn7czaTDTa7rqwPkQMZzxGY0FePSZZWJgUMLN4axDezrXT+gSTzl5RaQQGiDmsuTPljUMUzeGvqBFM5Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772121894; c=relaxed/simple;
	bh=OMdv/uJDc0rYBAMZQaK4Qg3Xt8VZzuSWs6pEHSuwDyE=;
	h=To:Subject:From:Message-Id:Date; b=nRBlAdYci5cl+VikVKxd2/jzKuLix07/9BwpaqliRbdEOwaWYuntyx16OzsnONZv+XSmugrflIbGVAT0dEI8lILmo+A8+69i4yBF8sjDux1fqyV2OXEUMYM9zssDeGx2I16M1aILlKRQQj0NL7fFyxHTKxznZSAVrT86COw7Ris=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlkFhAzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlkFhAzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18C7C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772121893;
	bh=OMdv/uJDc0rYBAMZQaK4Qg3Xt8VZzuSWs6pEHSuwDyE=;
	h=To:Subject:From:Date:From;
	b=hlkFhAzV/xDK7T6pFamvNkIV8YWhu1YMukN0GNRqoR7FiNNUm8kZCNDdI4Sp2cHk4
	 5LdzpOpCAF2tuProyO3AqOva0zBX2/xXP2QmPNOJVjeyk+69NZYKgygGH/yQ30M5aC
	 y2ktteSdIzvxRWKDp8em+orBVhxk4+G5TDe3RPI+YlH+7SiOaDBY7jB5SM5XAvWWVE
	 WqulxfyW2BX0VeQmA/e8UTj+IzfmUd49httAaupyVPQ0IV/wZcgMB2LkRtb2bVwCMs
	 7L+jveHyg8vaMy44FuUjz8KweMKgjKMaNth0WArfLB3hgRjCjWyAfy/S7buttDgx7O
	 z6LKppXsqb9Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EFBFD8FCE
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212189364.3249.14929889644896828776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2495e705015af2e084e09d516eb2382f8da7ec0f12dd83995fa28eb41840fd
Date: Thu, 26 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772121893

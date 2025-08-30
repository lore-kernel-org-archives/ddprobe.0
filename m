Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B61E1531F9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756568395; cv=none; b=GAgtb/MSAjA6sfw8A4i2Upidb3K7A/c/FO7vGyeCsspfs2ANQi7+vtdl9ll/Z4g9kV5hTuox6uVtOrCvdkUPpJwrJd6+x/RXkQ54wZK+OmSOYHVXF+PbJgolc8eA97FouoDuR3Q+x/toyiCUwN/LWEonwO32/kNKJRHkgDln/l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756568395; c=relaxed/simple;
	bh=4cvJVOTYz8D4jz4IGTU/Ny5AeVsA9ojs/fZtqnvXYAw=;
	h=To:Subject:From:Message-Id:Date; b=hhqlnMESat/V6uJhJ0IgT4Q7yWv9hH5sENvbNLr+mnNCpykqGbnqL8j6kscH0FZC1CBhr/wgtRNX76Wwc/kOkU9XshpO1IQUJb2oiLUEKGDIz/2oPY/gy4HoO8t7Bb2pXWneZ5+caCsgCzj41fz9egaqCxbup4YmhP2LQVAmJGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDRVfkIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDRVfkIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F95EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756568393;
	bh=4cvJVOTYz8D4jz4IGTU/Ny5AeVsA9ojs/fZtqnvXYAw=;
	h=To:Subject:From:Date:From;
	b=bDRVfkIK5aCow0OK/JtrMsLdhU8oP8F2WmNW7skfwu+tmjcvQXB15Fv/R8TUWc1kv
	 eycky5kR1A1+BoF8txLPntRfuTJv0wzQpQUXip2xm0a+Y+aNpnpIDDdDfB0xRdraHm
	 oxcbQvFqsyUEDUluttY9aDtg1IHqWwbQTChYVLJYx3uRUbcVhWMJUYaImQxqR8FkOQ
	 9OiPN5xfyH4LAsYYJoKfo5grLMh2cWYVOItJGazoOD7y1Hnl+zsLnst3WDewlk9Kj6
	 f8xpRBoGYYAPlGgDk9PF4DMLBSU4G3aluUo2HJfegoonPTGk7DLCxy+IAiCx1ZCHF0
	 YqMungm5zU69Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E588CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656839357.2943.611345951122665257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43988b79f503cf5da97d2e320af719d85948742e376c38584bc4d5384bc20fd9
Date: Sat, 30 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756568393

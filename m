Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBBA24B33
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710860896; cv=none; b=ahelgRgpsqW7XvktnzEqbzfE01Dq3EYXJ0RAL29sbyU/ykV6fcAu1C4+4F2jTxqFRguxXtiweHc1Q6CitVrBFDAY8nj5aLf3C66lHoHOpqeOn4FT76d4DYgZ2v4FSX0v3lq7qms57btsxvQH71tDIYgpw8PqbYzDDQTxMW6zoG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710860896; c=relaxed/simple;
	bh=bKO+WpcuCPIzX7Vr061HzxxtFqZyebASJF4+C+vrC5Q=;
	h=To:Subject:From:Message-Id:Date; b=FObp0ajKnbRvBRai3L6zQaf0LDPRDM48O/bXr3Yg+0fi+F7pyuDmLc+LS1WXJYS0DvZrrAG+wO2cYjoqOob7Y5a95db0v/M5iGo3RL3m7olIJ0h1QJWCdJaiQKyFjPYxhm8YYx3O6G5MAAiQ6UjPX9Tco4Aoaa0B1irN7FU0mM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3xbX/0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3xbX/0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AABAC43390
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710860896;
	bh=bKO+WpcuCPIzX7Vr061HzxxtFqZyebASJF4+C+vrC5Q=;
	h=To:Subject:From:Date:From;
	b=G3xbX/0DehK61hWnohuejD6lTgB4qTEabe0LL+Y7pXpEJU2oT6N/Xah6crZd9J4FS
	 7JrUs4S0ChEXfwQWSxM/wOZFCDJUF+S7Dn+Xsto1gC51IBnHYFdD+8FKibbkT6JmK/
	 5H3TgSHqFtp0MKIkS+TbLCoCNgN7O7jgM3vriFfz3a6RMGrptR1Olznzt7f7MxIm5/
	 6CyIl/op5dABIyMo8KpOth6AUMWUywPCOF4VKUyDCl24baBKFBxwljSal8TEmio7lz
	 3eLOJFc+eJrcx/zF+tRRG1ntAu+8FvDcmySvrM2rto6IJBr0TIkNLWXIcqeBF861uH
	 3lUd0hyIQTCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69350CD11BF
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171086089639.13214.1530126434670662179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c797a80b0cdb3f1835da9ecd01b8be39105ef345a1d3676b1cee1728331ad5a1
Date: Tue, 19 Mar 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710860896

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CC1212B07
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740153534; cv=none; b=ZBkX3vUXoCSj5SZ8sTu8LoT1p3wtRDuGzEKvO74jQW/oYxEwjMWZqZEvgswPB+oz7+h/fH+dJMfH4hfBcSLUO7QtEDxYExH4SJ8p/LgJJivLWuRUs0xgvpXvELlomH+tNLnRjXwSB6LycPDxOiHv543lln1oJqGQ/0hOTEdALuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740153534; c=relaxed/simple;
	bh=fBB6mw7lU/M8ITQyFawP0FqVxFBvGVgcQF2b5g2cgxM=;
	h=To:Subject:From:Message-Id:Date; b=b+eWUA+IdVBKJXJV9OiHZOSQOe6/ywa7+J3QAiFW827Oe/Xbaf3hLuckRz+Pv19Jr/xFpVcn7kBD6luFXx5eNnZaI6YpeRo2ALV6F9BL3xXrKZi/Iv3w2BfjZ7tw55erapdmS+LnSJlEbylhDHndaEsFHghD+kadIOcwDT7hSYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sC1mufuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sC1mufuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0501C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740153533;
	bh=fBB6mw7lU/M8ITQyFawP0FqVxFBvGVgcQF2b5g2cgxM=;
	h=To:Subject:From:Date:From;
	b=sC1mufuN5RZFJUN0gEEoNrvX7V8iYzH4JW4HcXRHEwPvZOWfaFbkwmahoiIfeO4xy
	 uN0Eh8MgtGUOLcsVcVdf33ZFr9jnwRpbNNGv8056LlPG64OIUibtMNLUbMWabgHTYw
	 q7yODs8QOCRsfNzAx44QpcW4/oxghJ3grzpVo/JXpKTLHleNF3jR+cY+VrrFGds4GK
	 MIHBfi+AnAGTsP2pcCmdvtNO8/Jq/z8Um6AvPloSYLJtv+vsepp20lR2jxfaVyLIlm
	 9uGR7jvz7Dc6ylZmR/YN8EoiOwwsha9NTQTv8F+n8VJoLY/kUGFve/2f3CxrD6cjiQ
	 z5RTuXp3DEiOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92006C021B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174015353358.30766.13028740957117731576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69e1182b733ba6dc58ac5fd0de46df11fb191742573126d276358dbed4b89f5
Date: Fri, 21 Feb 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740153533

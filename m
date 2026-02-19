Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28632340275
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771512294; cv=none; b=XFwQNfRCZtAyDNWSMqLfAbh0u79kgURwTMOXmGUcnArMJtMWWTagZrVH7sgKpcI+Xky7D7c+ANNHeP7I5bqTkxY1JidV7JCkcBQegf1nfWPYE54uahZPMqDuA14twH8JNWbcnIuhFHh/lq093nLURSfAzlw2JcK2UNfm+JpDHJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771512294; c=relaxed/simple;
	bh=Kcig/lFsw34waSzE9VLe+x7nXHt939yXGzS6PaKSplw=;
	h=To:Subject:From:Message-Id:Date; b=aA4WV8uyr7yH4zvNjTkHva+h9wVLa1jRgq0qaW4gdzGsNYCHj8bxq7jdqVq+fh0T3Ts1u4Qi8RkhF9T44t2Anh2pozgvxdxSgut7b9exfN/DPR6dVa27CM2C/UKQtf6CRkw1Q+qLoh2KWh+rCaAHZNRWbgCj3DnEix5Gk8UTUn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZRtKr1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZRtKr1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC9DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771512293;
	bh=Kcig/lFsw34waSzE9VLe+x7nXHt939yXGzS6PaKSplw=;
	h=To:Subject:From:Date:From;
	b=tZRtKr1axALwAimy7Z16ybxqd8JHBAn0NssN/THFL3mzP08+Y2MlkUpZLkQgdd0q6
	 zrY1Iqua48WVpEtbohPX0ub7ajhTGTgI5cpzK58rQdKPzmDvPqwJYfgtbFqpN4JOvd
	 gQswIhMe/SJ3ZqwhuUdKfsZbw5+1KjRhIL9oV7PGQh8WpbrNY2ekhijZFz2Y6ymq9a
	 T4gQgib/qsGCd7wifYo6ealawCJ3e+Kpzb6hl/bK30jF0wfdFdM90k3t1zMK0/pJ9J
	 nXIfzIzBhk6ZH8mWHrbRTJU1Rn+9Ki41sl6G1YHmW0CJsNUaXGl1qrC9LTzCjKegKG
	 ULv3RbGuooqag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3527E9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151229371.8201.11848074742806807264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d858cb89828c01dcdb0397e2276812d8b38ad87fb8be66803822031034078a5
Date: Thu, 19 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771512293

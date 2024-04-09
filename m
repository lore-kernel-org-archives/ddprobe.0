Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F0A153582
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712683697; cv=none; b=RunOe0J/FKHaK1TfGXPG3XFlsU6Ctw7FRJt6i6R7jvvyd/nFz3oJR15+66rN2BS7nj9Bjn2EmfYJTOsnrOoPai6Wj56Onz2Lm1MUsv4va9ig8wbre9c13cnJceVeMJdU0lc7+1gjpDiOqTuQFJW+iUgD+kHo7e3WkALbe/vZBuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712683697; c=relaxed/simple;
	bh=3WZUTYrUG1i2l1M/b5yztKACE2+4pu1h/XXRtC0FLEs=;
	h=To:Subject:From:Message-Id:Date; b=ZowDHFCQ9XVNVdzULGP4Ubj256sJw/upLhDPcVpP0cUQ41WWDASAdo57Qmw5nEuhI3Hah8z0S235ZA5MKw7SYa+z5/m8EgByjtAo5vl4qoV4mQfciX3eU94qurCjB0EjEOaJeSmDBKfBUQMR7tDzDtYckC8v1k3/OdIJ8LVwDS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iozlozhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iozlozhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D8D4C43390
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712683696;
	bh=3WZUTYrUG1i2l1M/b5yztKACE2+4pu1h/XXRtC0FLEs=;
	h=To:Subject:From:Date:From;
	b=IozlozhzFzmXwZDmox+mpFP5q2Be7LDybPKENscCgML8qkn8eDfb5HeBWC64Ty3Ca
	 MLbAubZ14oUuX/a+zH+d8Uz8lEVGqAJ7suWFmjHGw3pNftJ+O3v9WgBq/Fk06IYBvu
	 oT2LlxSI5g0PyjlRidkmbFg4TCL4HR1wzSin6CWOxr04dK+XBszASNBpatecNkiF03
	 ACi9mfdF1w/PEMeUK8l4MhqmnMOXIDm2kHsOUR0dJTMuuNNeIcYyDhzI9pNhG85FZ7
	 V/FMpIdd+F+zOk1Y9ENfOHgUHKSRbA3AoKT7UCfBPb5iD7PmLzRJeWmrYvsgI/F/v5
	 mdmLypIll/1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D5A1C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171268369650.32109.1391691677501687697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95547996a7b480a34c25f84a97a2c560a3f3ff12d42c27ce318ee2637dfcde4
Date: Tue, 09 Apr 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712683696

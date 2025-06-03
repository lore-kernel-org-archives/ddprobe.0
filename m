Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE7D372
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748912394; cv=none; b=N5DOX2E9Rt3ZUztAaWz/Fb3agbvHzaegbBze9qakzxnqrC3dgNT89q/1MQTAem457ixZUVGqZopIyD+xysgQExdV0FamSh9CognYnMDre2IcKshQKZxeqzorF3+R9E7QHiZ5glvkkAblQM5YUBr3dSWjW6RnvDGAwpoilpoa9YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748912394; c=relaxed/simple;
	bh=CDDlfzAkOSCXJsKG129fL+m3TAk+6JgOXhilHVjznOY=;
	h=To:Subject:From:Message-Id:Date; b=BYWbzzbRUJoKlUAIO10ZQPraWWvhg7kjx8KOB1RUdsl7KS6emdt0+eydEmj0CjQRN4b9BBB4PfRiRUg/gR1KfDrOpyEZF7QtuYo9kvM3ptyXjC9Wz86hBMDG/+9SyEfLC7po+qHyEcetOpDmFTUoPb3fYSKugCo2fHN3KS26Kh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFckUITu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFckUITu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BD9C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748912393;
	bh=CDDlfzAkOSCXJsKG129fL+m3TAk+6JgOXhilHVjznOY=;
	h=To:Subject:From:Date:From;
	b=OFckUITuA3ZRRCOiGYrsk9j4omvX7YKr+vEU5lxxD6rLmHIX3Wl2dEYSTBApG74wK
	 p9i/+b+G4gPwACuhVazGMacb6tGDIUaqxEfsrVXzhRfqgCtiVd0HM2Oi6ZrOLYxeP0
	 ESyHAGvmGqClkkRj/zEYqnARBu80AIcuSm1zJ/nPALQEfOIZAGr7F6wFK6IbNJy3CC
	 D9dRankdFHuL7GJoJJPAJPePW3OM7rnsi0xRlu4jyS8sor2Zmr7H5gRAhOKvDhNN7B
	 /c8epQP9pH+J39N5DKdb01ztaXo6lrvDSzRL6QJEeqOi4OlHhkVbRoLnrH1/HmxcEm
	 awfezC0XlxHYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9687DC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891239358.29727.5466771467811077551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df727f9eb253df1feca1b16661c53e3ba0df21a19e5e49209865516fde9ee79
Date: Tue, 03 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748912393

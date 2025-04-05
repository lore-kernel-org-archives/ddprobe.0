Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9F73597E
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743836394; cv=none; b=joQiaa3dZ1X6eC/asckdtk/iUgbcj1lT69AHBLNXufbanJKbf5jeKsT7+QK+oHFNG+1tzbsHVpfsNqwEU0D0YEtBTDwmclCetZIanZnmv0R1JJU46/GX3s/KOWSsaf8aiWvgKkDiQW2r5kcn2YgAW/K+TYxS+JhXY1tVrGZVdqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743836394; c=relaxed/simple;
	bh=DoVocmehyDeesJUdYLyeXWhSliaFKBKjWBjiwuUinJk=;
	h=To:Subject:From:Message-Id:Date; b=EuxrqTQZ1guqPj+Zw5AxAFYYpw9ZVVVjs0twlbysqFO3zCiS6+SCN2O3Mfp7XAjjW1++4LWaZBBokYfLTWP5yrAKu7o8yDdkYMrI6roHknQsaiIu8edb4oh+OrjKNINd8DrF4rXIIlGpFP+JIcfpRMa2Fl9/5FyTi5B3rQQfyUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK19Dyii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK19Dyii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5887C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743836393;
	bh=DoVocmehyDeesJUdYLyeXWhSliaFKBKjWBjiwuUinJk=;
	h=To:Subject:From:Date:From;
	b=rK19Dyiij+fvFk/iJ9vtPI1jxr0Q5z0WDcnuyaA/jCwZXy3Ycj9HGT8u07U5BaRc7
	 iatuNG9id5ZOurBZM5uRBjbWXJlQnb812XQm/tNkc6qY5OfGt4K5pmFR6cjzVi2Ng6
	 nvLnEmm7Qlnw0KPEKczt67LgW+7d+Hk+xk7TziD7Hi1XA3+OEw0cw8IUwq4RedL84x
	 wNc9GRZ8SVCnZMJbbyfzl5a1f4ZNujAwI8xpgkkuEXKmgeuiVvd1pXUi3chhdHNAW3
	 eyO71rsZHVxtbA6zvYF91oF64Rd+0kPTi2vTov2VCQk5dyPIpFhgXXSN1ytHAjFFGy
	 kPpc123AmlVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933FEC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383639359.10676.4325633494617428350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68d7675e5499f9410252e4bcb4234916447958a4ad0784a283c3d6a32440911
Date: Sat, 05 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743836393

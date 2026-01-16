Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CE878F26
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768572834; cv=none; b=Mp1bMLQ7EAhdTCjBuwxUW6Ew5m3GOQ9jLjp7ySUKjapFe+cJ3X/+SmaakR8I/T2MkCzDuK6xLzDpHpHn8save7BJV5AMKp4Mj6fxrYtgn8C9AT0gQi9ZRfElGeCtkBMmdcB/8vL+g0lHmEwZlkDG3iwH04Oo5staJxgoqQuhFCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768572834; c=relaxed/simple;
	bh=6Q1eMyAh16D5U5m3N2MXG8tDewL2fx2WMdh4m0vlQq8=;
	h=To:Subject:From:Message-Id:Date; b=EMq7QKF3StC/R9y8NF5uHQfOKQ5iLPs7+jeMrmMRHLI60pye6GML9LOYY6T2NVvjbzCV5W7DGHxFKgA8h3LnIxu3Kikw/BZnHcA6DDtouC/zhpTkN6+BGtONYTKf1FsGtGNxyXU9xTAlzMOFN/Iap+rZdQoofE073M8PMogJ5bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnFYs2Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnFYs2Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BDFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768572833;
	bh=6Q1eMyAh16D5U5m3N2MXG8tDewL2fx2WMdh4m0vlQq8=;
	h=To:Subject:From:Date:From;
	b=dnFYs2IcdKcFRmM/yBDKAD72I0TVSiQnCBsEqjDmNTtTojcd5pO7otZ1FvBiWqbfT
	 BRiuQADbAnzEn2pa5CDl7GxVA8HuAcOi8tHemBk0B8qNBu1OnNLFSbbWpUPJQWm84l
	 mHwdumBcMHSW0yDb31nkK7UzxHOWLjPIxj7V8qPOHocO2tOqU0+E00P7nWe1gEeGjj
	 r4Zg8uC4h8fz+gvKIkoWSr5vUuoY6h+5ZB/RGMwITpkBvz4Vz4neyAiBmjYTIh3Yap
	 KCOs0KWVRAG8Kb8iN7nbv8e1Wp+3vn3RsZogbQgKsKREZcXXrplSPb8RATO0S+eBKa
	 zBenYUcF26/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CDC79FBC
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857283358.4484.7068216263779726874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9e17639ec7b58ab4f22ddc6fc3b88f9cc59770dd9a328c06edce634d83f114
Date: Fri, 16 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768572833

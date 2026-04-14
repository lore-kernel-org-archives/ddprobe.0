Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF87239E60
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776134854; cv=none; b=YuqHvYOlWlfE3C9GGcrGPnfAnB56IpLmIqCZkaXXfZC/dHXsA/Nyc07PvgvwliHA/mMSvj5TYYqAT38v7x3zwrUWaRbfxoT/4jadFe7JFPrf+XCq6mEQLcIHaUvNXLi3ww14JG41EH+0rcoAta9UaAaYEflmAkOzEbpf9Y/TCCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776134854; c=relaxed/simple;
	bh=hx34Ch4KDOnOe+j3Tt8ElSb70gFzf6Bhgz56dtCMis4=;
	h=To:Subject:From:Message-Id:Date; b=PmGgzjJ4v7DJyT+1l+YwvY08qiDbhjnF+BO60xRoXgsP04v+ILFevc4Ruy/J9cy9EEy54Xvnu3xteORU/JWvx7aZXj3V32p+57qIrRMFpk26+KgkM3d9e+QP/Mi7iRKbIloCk72vjGxhdmqklzX9EUU4GJCAQ7obFdJQImvQvAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvwDdOEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvwDdOEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DFDC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776134853;
	bh=hx34Ch4KDOnOe+j3Tt8ElSb70gFzf6Bhgz56dtCMis4=;
	h=To:Subject:From:Date:From;
	b=dvwDdOEzVtvUZXMEKQQZfQLysfE52/Rad4BvIcTVaL7WAxuqg20GpOWaP4BXLENqL
	 fafuY8OES85EgoeOsAioO2Bxzcwy0GVBRarIlIBrhnCo4ErkJI3Em6lE7vuz6MtZA3
	 2gEBuRMQtRyE/pW+gGm9EoDQwaaZmLJZnMuRde6fgMvzhOXM3aqWgVd4OScO1Bc0gm
	 9ylWKsrRsAJK2gq4CoBwtbOcSiLDDPJsxqKd6Mk0PfuCcH0u+J3Z7xRzZ7WmaItQsE
	 yJC4guCLh0gZBIXLRNbV8E3C2ZhLNVvd6RhD8iVfLHreWl2s4pHRzF+RGLvk6qm4fp
	 K704AzpaOkPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B207DF531E3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613485369.4112.9618842152994537852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceefe644f0762d6125a314b5608556ae1b94c86f8369519a8c9a5ee4afd54d3b
Date: Tue, 14 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776134853

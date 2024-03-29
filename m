Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51073A1B5
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711685297; cv=none; b=hMaY/QC4bsQOdpvrW1MwJuufHY5LLTL27eNC2X96gfMk5K8Gtz8wZsiTJIJfJiMsNF47M03JMgIFHuG491CC1bkiSgUezfOB+bXefOSbR5xi0lRFBw+eWtmrHf/TP1JyuQqhtEOnIXThWRAHQ0UkEslY+z+2YoRpg2MNNVCHD0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711685297; c=relaxed/simple;
	bh=a/qlRZh3dpKdraQmnZVH1ImOdOlaUj++gWZxa5BnqVA=;
	h=To:Subject:From:Message-Id:Date; b=Q32pUT5ET3PrEdp5iwAqslh9+DLG5xK8OVNAR7TZzglUMX5D5J/pm4L0A6Q/BGFZd2RNCZtqKJDRmTw2VD3SloJpNczA4F2Feaoa70TzzVEn2LOVwBujb+JxbSZao34sBhTHoBn23ZjpaXCLs0Np+JCcO/ceH42uqCSwyVfEnUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVjs0lYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVjs0lYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3EDC433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711685296;
	bh=a/qlRZh3dpKdraQmnZVH1ImOdOlaUj++gWZxa5BnqVA=;
	h=To:Subject:From:Date:From;
	b=pVjs0lYrPlC1bnTUeXWEP9RbTUMYSyLSeYjoN3dcdSRzSgwJOnHJE9UqH40okcthb
	 Xz70qneP64mXcWp9y0+w65P6P0XxhiMcGE2c9boF775ZddKy5mmct0CxVTq3pHt3Md
	 avRsnAnmYQ1+FMDQpHc5Pw2QqcBCL3bxDDvwffkB8HThLWU3gs5q79LJ/h/W6IWXQq
	 6jXRHkmZu7tqIde/mSjcemwSPD4YGsNe96jZGelitILdZWZWRw+GYZoEugbo5hWG92
	 4yBMQ5iuHEJkjG8EVRwMkAECQOpc0lZmdm4w8gTZyMluimudy1hQygBLkCzwx8kBhL
	 JIPnxhdIwHXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63656C6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171168529639.5858.11076658816369691290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90740e07bd89fb5ea814b4fd8e496f4adb8edd42be5d14ed3600d3360fe8a659
Date: Fri, 29 Mar 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711685296

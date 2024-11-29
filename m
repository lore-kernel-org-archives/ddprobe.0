Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EE31B95B
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732896954; cv=none; b=e+moK16g/swgRuGrwdE05Hsy5IQemwDe83ycwj3wl/dYK1oez2snoXZVttnYgk0Hnjqqke++0Yv0+J4GKJP3Zqtil+HsZypQPGAQrkXy0cWKx3Ts7k5iR1JjpX8BTVaMmUbR52DVRaMk94ZzgHIRMvlUWESDzb2IqquBaAGeKo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732896954; c=relaxed/simple;
	bh=YeRpNq7mjq5/cbR9w4halWAXy2ZHSaq2IVVtEbjRoBY=;
	h=To:Subject:From:Message-Id:Date; b=lOLlF+IgxhF7GyDff3vuvwaQvaBmZcXfovFO5jgavb+XxMLPhLozzTpEMWHYNGQlX9LPhIep0Oi0bxyEIrxoKg68HBUMS4YZL5QO8QMIYdcgSFy46h0ge9C4RJJc/vNR0TcN1n7HgrY8UKvcxffQnhXsNza+B6GIxvX+0T67hiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lW3NWV+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lW3NWV+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3EBC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732896953;
	bh=YeRpNq7mjq5/cbR9w4halWAXy2ZHSaq2IVVtEbjRoBY=;
	h=To:Subject:From:Date:From;
	b=lW3NWV+B4fs/jcQhAmCE+S/x2Dq2SKN0Zb8G+B4Jt+ThfzNLBgu9f2VxrpvQCXWsh
	 NGXaC2PScLwD0bHrRZ/b9xSGqrmS7XKuFBN7/ZgoCt7viZFSJi9ARNSLqAZUrWXR2Q
	 md+o6KS/1GCNGzaGXF0lbj4XL4Q5ANabsynCjhn1hvJvkKyw/S7JIsP7U8piuby6Cb
	 rPmk+V69CoRd92eM9f2cDJSfTCDweDdLaIpErWi8N9t8eSP6bKl3xKYxLDvVugEyf6
	 zXLUd7ZoSjUQfCsHptMdAYwDYVen7Af3i1r6/3N1Yzv7DQ1icy9rs8CYdR91Rx7sHR
	 2LeSjVxpDPMLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93049D729E9
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289695359.28448.7762544373908878236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c719945ab250db3af13ed074ffbc2616da303481543422dab7400dd19659d14
Date: Fri, 29 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732896953

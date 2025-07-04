Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337E5F9EC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751591994; cv=none; b=GwNYp8YQQJINyNg8geWJkC8PS8+U1nw4Eo1OYwTOaHPBdm2MpaMQfU3VmEfop4qCqLVeNCUx5y2j4tUqgzDne4E0iiNqfLXKDJyWfs0VP2Ab9+t5SPFdwwTqZ8+KDH9gfBCpOwHP8dwIKK7RcGgIfqrpCz0SQ/6+ZsCt3yzSGxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751591994; c=relaxed/simple;
	bh=sT6TiaXYySn5fa3+u23D1RaRbWBOsgxwIf8p25EDL1s=;
	h=To:Subject:From:Message-Id:Date; b=U9apHrDru7zCscQEJQZP4FflExJckkbVrYL1JBTo3hWP7sRUHvuKgjbihmLojr8JWgjURozph5drKmA/JBpEVY90Z++BjujnYfaaACnq0TdnXHqkXlPuUv2q+3j3pRVw/ICbUaaSqCfhabYUFyKdHkQDlc7w2o0Mbykw7F0S1qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oawX+Pxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oawX+Pxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6A8C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751591993;
	bh=sT6TiaXYySn5fa3+u23D1RaRbWBOsgxwIf8p25EDL1s=;
	h=To:Subject:From:Date:From;
	b=oawX+Pxm9xH8+SJdt0FjCil/0R/bITIeKm4UA4nSaSMgemsOAGueUMIxqi5AhGtcH
	 DvlyTkC0m97mpriL76jqXHlQ25ibVn0wdge40jM473pr8pnOhhdp+VxP5YBwtv3ysd
	 Jld0DAt4RiaqoP6SjpT/4i9zIy2c1ETcHAtAfJeEIZLvxP/m/RzUXQVbSl0nsLYYSu
	 rPvlCPQG4gdwjKeLE1oCGQMn2W8BDovIp2qOk1/xYtMo7m6fA50457RExqb5750TP1
	 C5jTGvFUxzRgnvqpG85+hACd40qEFwrPzgj7lm/ZXPemnwu0jnGqGLixwSH7UD7Z8+
	 0WvO6hfI6t/DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122BC83F04
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159199357.478.13802322214057951392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373ffb04248d6ef0884c666658f1ef033d3753833428a27eedf14adfc6c01515
Date: Fri, 04 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751591993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130ED2153CB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754632794; cv=none; b=q0HZj99yM3j31tIox2zZaQUlv2dQ7nq6p0HXUcheNt1FbgwvlnysQlU2LWTQ4ZSwMlTWsuc4mONZ9VN4x7PCSKn9RQz9HOyNTtFLCPYn01h4tu9T4uFvEf5cGAL9gcXPtpX71DO+VDFrO3IGjpmABufNbNCjTnb7GgwHyI6Rokw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754632794; c=relaxed/simple;
	bh=m6Pn+dFyZsrNoB7hFqJJg03LATFASXl+u7c+K+UPo6s=;
	h=To:Subject:From:Message-Id:Date; b=qH4jjnt9vHTLEEL+8o/gvBFE6uIEvbIlwuo9J8Vcf4gXqFJZlnKZN+CmTqg/hkh512hspalxMJ8+Ef8F+8Kim6t49h4HPF+nYAm+XdUNXD1xF19TPEewPAUVyHTDxINbtR5wU08bqWHInr3/soQE3Cj4ZI2CSKvaAE2My5V66Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJhMIkhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJhMIkhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F897C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754632793;
	bh=m6Pn+dFyZsrNoB7hFqJJg03LATFASXl+u7c+K+UPo6s=;
	h=To:Subject:From:Date:From;
	b=cJhMIkhraus5da6IxNJLXz/cczCjIKTCrE6XhfSicot6rrxpPbBFTqq09YWGw0WLz
	 4lrEjPne5v/UEleHGNL68vCKYZh4WuvDxAaIyq8bJCLY5kHK/xucZDfHw1ByVaSaij
	 DTWyLp6uV0ZcRfd4W5gA2f4b04imuBLT46BTzXGJ3JJ/Dslizr2vnLTC5aoQ+v010p
	 FAj1sdx9Ghl4989im0HqRYgs4krRR4Iayt4YXqodbfWJ1BX65k0DZroHKlGXVau93g
	 RXcDzfkJ1NA35fgk29Smgk0d0vf0qtnlHkMQhd0R1vcPRQg5/WpJ0wC+Ry53G2XQmn
	 gM9927BZU3+og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C79C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463279357.10552.528523467507647827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ebef6a8ce4946356a9692019d195fd7dd85dba9a89557798d5cd44ae91c50c
Date: Fri, 08 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754632793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434F184A36
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727908554; cv=none; b=DAFSP9gMje9lGGVuTV5PwpNLuS7j1qHd4L0OkYBcV8+4Rutx7bqOjbizfmbkBZnlxXq2S82gxvZAwl3/1P3CvSmQ9Em5OJMMH0j8wtkIzJM29W8PXmYx9NUTWubDnnJV0+9Pz6k6uupi/Fwe/6kPDiBpb1YpXqbtlg1DRlxRIMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727908554; c=relaxed/simple;
	bh=Uix8Y7CH6t+lU+yQNCDt1v+gKWYOuXU9jPBzg4EyrPY=;
	h=To:Subject:From:Message-Id:Date; b=Sx+J4aa9coY3yIvjglXOOkSsoG0AbkIOFdhlePRb2CQGwUFjLq78sFc17xEawqAC2wlLuwlgV8zqBV/nuN842bJ9gK2b5bhrP8/wj8MxBMDdLzLH07ho0fA4/AQyVwY7ZqVm24sy6cZq7s/Q9KgSET5JDZhfBELuMKIZx+IcZgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRMFhbvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRMFhbvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB24C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727908553;
	bh=Uix8Y7CH6t+lU+yQNCDt1v+gKWYOuXU9jPBzg4EyrPY=;
	h=To:Subject:From:Date:From;
	b=jRMFhbvkZbgefnnlcdw50h2240T5gC46rSu7e8XypQ4r+QQxc6vqdD1FOswPSLqFK
	 DlXAE9qgiC8kQzpEvNWHZrjDXC8S9vMtRhkqyRG8nRgsRlJ1rBDFJ0uctEhatFwgX6
	 riItl0sUkjj4G/b8ijXmzlhBVw+Wj4fw6M7pC/15C7BlNxfKGZ88Rzjy3TjLVrSSgv
	 NT676+fGxLVG/0dilBdxEVRH5M81XV7EyPLDHy4KxArbs9Oqe+90He04+14/3QAv5l
	 JqihgOvfJ5vegB6MtfZWMYAKRyJxDIXjObZq1byE/d5SSGbU0kj4xprNqsF0TWFiDM
	 HEJpYpiTDoHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4609CF8544
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790855361.8869.3349001879032827456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c23e743990049ec600833928e9109c2209e7885a7b10d8e813dd60123ce9ae4
Date: Wed, 02 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727908553

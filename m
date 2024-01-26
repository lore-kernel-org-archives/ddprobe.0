Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC48F225A6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706297297; cv=none; b=N7RCmsIdimt3iEDxJz1G1DRG0G2Y+ghpQrTfT/PF47vYMc55yKOoxnq2Vunmk65Y1wajCZvwr1SdAIKRg/gqxlYRlJmKYvSRi5fyU2XRTp77Kbc9OCzi4RSjjPbbh/8gG+LoBmz7+VmPUfd+7YEBg+8dVq+Vb5oHQzKOsXdeygk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706297297; c=relaxed/simple;
	bh=OJl32uB+wz/GTvp/eG5XSV6j2QZhsThMRykmYHAWObY=;
	h=To:Subject:From:Message-Id:Date; b=YRqupq4IJHjt/Xr2Z5hPr6cF4b6gKIZYYUJrSjXAfOZrhsG0VjwIjEwUGX2nJ/0o7UzUoEEd9G/Sso3BgiqgH/V6Uucx5LQNTac79SEiQ9C/MPxyWfDbgDbSUT/tZOlQS/7Z4parfNfQN/bhw7WKglUTdfXLhsWhCFQd6M/Igko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g46kWSET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g46kWSET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78587C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706297296;
	bh=OJl32uB+wz/GTvp/eG5XSV6j2QZhsThMRykmYHAWObY=;
	h=To:Subject:From:Date:From;
	b=g46kWSEToaSwiEmasGB9q0yAbuWRUvVJLlxK9wcgi28R8ZR6cd/YZ8PvAZ0iaUu9n
	 hsYnw+PMEA/dgE51Sm5aXbxgBzcJZe5wOYyj7wOBiKhm6xSyX+ZP+DbG0xQaXZx4DH
	 hFFi+ERS4QcmlVuLEIqLK2EOYywpbb9FXgVBjQLGEKKtiNXW+ew6aUEpYGWJeF/45y
	 Yw3eRCR7EBxXjpxe22xVLRWfB1ykGELufxQ9f4jHZppA/IZMQsUP3SZIZRXZ7Vjx6O
	 3+GPlZaSyrtHkUseEKFz5X3IIwdYUVGfbGvXSim76ecdi6IQBtDwqAEQ5VMBVaw2jf
	 RleL5SSVAn6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F52C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629729638.13269.14243430876109859681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f525420b0fb067f950749d62cc89e27139bcc136eb0c79ce6dc054b64718bd02
Date: Fri, 26 Jan 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706297296

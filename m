Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C832331ED0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781829394; cv=none; b=T4b9WpqIh0BEA9gHa3CNfxnCU2VqfN5N6oqtXEo6VjEVLJ05ZPYnOrdrgchIDtZmpqP26PX6JYtlh//mH9UP5VPdQHAFr1zo2EHSbtC2AGhpuJBh4s8fNE5F3SOLCG9dJt7tA7DkNLdzOKCQHcgEEkwaPWXLLjosPaAJ23mqW5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781829394; c=relaxed/simple;
	bh=oqPSx2bgPFtUw4EcIvJ9xoxu26Jce/NjMLofFJLc480=;
	h=To:Subject:From:Message-Id:Date; b=TmKZCMeL1tj6G+pwoEckW4w5OnYtk4Y8blBBJ+6Q6Etfx4rbh/RHAqAai6x3f+9nh0oVG4AhfpxpZOibgyDbURfvSo7kaSkgrHeMPq+FQH7L2yLmqqAWxFQ3h+cRN3Tp2mBX8offajTKmz0RH51uzysyGj/gN9Ang8ZwfWvQPV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVNOROPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVNOROPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C897FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781829393;
	bh=oqPSx2bgPFtUw4EcIvJ9xoxu26Jce/NjMLofFJLc480=;
	h=To:Subject:From:Date:From;
	b=WVNOROPuWy5l0QJEuvImCSFPg+6ej8kZIm+7FvAZux+FG7vmFr1ukxkKuvjX0EWPm
	 qoUjxsuv+8XitXsat76DE68XVn3/rqjxU+TJfZl8aBn/XOyzhsaga5I+sABc8sBImm
	 9/A99yT/8G688m/sa/XpXlIqhdhMseuHoo0K7nXPAIi3noXkheMiFYgGrLg8FJxv2L
	 ESKSBEdXd0giYTtWF1VNTzCo0QsTWyDznlxOAsNb541CnCnKDvK4AbcfYZTTmUNDU8
	 C3FcbrlLLJ/IdmsluR8NeN/hdCOmvZwdWo0Z9k3mXP7j1Kbtn1H3OKbtzSLyb+d5Q/
	 /YvZFTN7rhoqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF4CD98FA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182939369.16719.13807997147068144843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9db277f70ee5ad69b0c356a48d30674e30dac43ba1c3a872c8718897fe3469
Date: Fri, 19 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781829393

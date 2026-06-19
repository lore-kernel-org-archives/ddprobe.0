Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAB7285CAE
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781881594; cv=none; b=cR+WvZjciusMBTyvBIKTmtfuvBGnKByPAoEEsqjY2631cBMkoViP7dVW82UfESkj7cm6tWH0/Rqv+bJL3A4HBl9elKQMhQL53b61Qh9XIm7LO/PTMKV9WwjnwFkdHntb6F3CI4/gZcPmhWe/JeQICsn2Xc86yKyZp6eba79PI3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781881594; c=relaxed/simple;
	bh=FJNNNuOW9R4vMk4dqd5UvikLMHeLwVVwlboC+JXtThU=;
	h=To:Subject:From:Message-Id:Date; b=gz8IPBc5FDc5T2olpjsu8VY4oAaCNhi/UiNS1FibQEnDb1QdSUfjtz5bgD7mOuIse9OTZwsn5I2tJ4YsRkbAIKGZe6pIULrBVFhiCUpoGLSGNU2/PeI1heaIFtHUaXSxJwH35rqO/HYpliNGWvhKCkcabbLmGXU3sJnhxsJm4OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIwOv2E8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIwOv2E8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAD7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781881593;
	bh=FJNNNuOW9R4vMk4dqd5UvikLMHeLwVVwlboC+JXtThU=;
	h=To:Subject:From:Date:From;
	b=rIwOv2E8d6Mt5DGB0mAkVmrQgFuH3SYTYaFdTcSdnWL8p2nbARsgquev0ZQ++mgqk
	 OKKI2cWDcd5+fMJFiIsvgQfIRT1HnphyoKj2ChzynDy8pJLeLNgB7f8duzIL4xQ4fe
	 6i1m2geAcLRIk3ljIhXwH1hvDKvZaC/FjW5iJ1hs8hcJAgbAtu/OxCGj0oDOpidmPX
	 najZXO+MO97APeEFhOs0qYooathOxxyRn2+DIS3AvJ4e1mv3eoY2Vl/oOgt0SPb0tL
	 YIOG6pbrYEVkBfVhbPDgzDJvMSxayVnjEMA3N6KgIbHmljT7XU6x4ejS11WJIZi7vO
	 LaC65DdZlIMow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC3BCD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188159372.25417.18370637488891134430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf67bfab708040a76522aabf6427bac1b29041cea6e575265a538dfe41fe74fd
Date: Fri, 19 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781881593

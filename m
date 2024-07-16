Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB76225A8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721114723; cv=none; b=sZ6RqFjPa5W6dZYaB0featfpdsY0UohRjU9Z83ZH+P5AhzTOzz/x1Z+qespTfMnIw+Qn8f6kWKFdGj/yu5cnwjBQorUttUKySZOb8pDl3UIXhBwFVhJ+LEjJhMADWkOgtnMQEiBqo/cMcdgXMjMVoLCBVTTW68FEsCiVlPdj4kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721114723; c=relaxed/simple;
	bh=bFDV4/Ft+agROoEFXDYj2Agd35S3sJnuHqJcr9f5kN0=;
	h=To:Subject:From:Message-Id:Date; b=aUGO1EKm9qwcCtmiAvoo4HG6TZLnrDruhTYubGuCU56v3d8G5AsMc12NP/4rTI2d9CByr6pkYfMmQIF8uhsW8MbeWEPH9HPOtlmmnALpC0V4roxkoLUi1G3sNZQetVzguDlowJhfitmxOhcUBUPc4brsAWqiKLZZneoLiG1ruCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMZJidYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMZJidYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF63C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721114722;
	bh=bFDV4/Ft+agROoEFXDYj2Agd35S3sJnuHqJcr9f5kN0=;
	h=To:Subject:From:Date:From;
	b=UMZJidYteQMGAKnvh0hMoBsFx7SXGE/gDeT7kGpCFX+v0YC9hN3cpg+ZUItZwB0cN
	 HPgvQZGd7wLY5q4dxkc8IUyTzcoHvxkVLIvxwXVP6ysROWmFhx/A6ZnXHD3oSBCVaG
	 BxfUjygjWV3bZygeSBxmz88jPIdBPz3IaZtKhhYVKve8Q9Whjws7FHVNc3u5zuRUgd
	 ZgNury9HmJQD72AA44oDwYa5G1xfQlzQ9E19YLeRu0jkZZe3+58+cOW29sJ04/879D
	 2r81gm/bGuECRUdZH7HN6woIjn2mdNx9BE/4WO66Q2bDy2JVCXJ9yemYDG3MUNQ6re
	 k2btApOvud5Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9D5C3DA5D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111472282.14262.4914852415899407066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc2be2470628a173ca7977d02b99e25c691c29658088dd1dfe0159cea388e82
Date: Tue, 16 Jul 2024 07:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721114722

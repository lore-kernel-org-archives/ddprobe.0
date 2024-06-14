Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0D2136E09
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718394503; cv=none; b=RwpZqBvIfVEDxrf4neaOhdsObfmPeUp0+Np9PFix8+lmxyqptYw6PGNiP3kIOMVNmlp4eO6poXEIQNDXAR3DvNv0ocVz1fRLggGvPU0EzL1XVCVbROO1gc5x1Ow2XkwQbQXEDZRuF9ejoEnfts62xg/wYdgFD7Hrm7DU8XemFRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718394503; c=relaxed/simple;
	bh=/5W0D0KAMI6vS5d7MFepf2oy0GqsyF6QeLA4AdqjbNg=;
	h=To:Subject:From:Message-Id:Date; b=hPIc5xTd50zjgaCXGBiEs436kyHerXwXbkEWUuIsYBg3h0QidR45BB9MdTWABxWnLsoEj/rV09gw1XrdTdkLFmXUx8ybq4s2S/BM5dPx0yR1ecHPdHI7MQHgfCiojWykwgxzr5PDPlRL0dYJD/TytxBpD34AZTS3I4VxzG29IgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwW4w9NG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwW4w9NG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE95C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718394502;
	bh=/5W0D0KAMI6vS5d7MFepf2oy0GqsyF6QeLA4AdqjbNg=;
	h=To:Subject:From:Date:From;
	b=mwW4w9NGJ5V6H/tSh/SqCVk0KRsM+ieMp6OU91/vYR4YWuGgEY8wFLSxVvkoCg83u
	 hTZUCDePYSAHq8cs8EG4OPl4CZdrsruoerF0ZYBy9WU9TGtwqQimcz++jHF9GkOmlW
	 S6Lqmn9gBNSGFb7MEN+F1+o5I5OPdupiRE0dh3/btEdJPu0AlrtmR4+E4RSQSj84nS
	 0p7vnLq1lpa/rmWSyuX0+omMY0PLJHK8Ogyj88GES92Ia4/IessY+d+VI2FdKv13/u
	 u+Y5/CGC+rz+Ha7XGeryzVOEU3ZF0WX0Sr4qT0nwcXaWEQXrmFPCmlcmZVHriDeQ3O
	 e8T99IBXKJ0Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CCAC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 19:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839450279.25349.9705056821906592201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bc1952eee77018a4ead26225d92324ce9ce70154eca48934335b58ef403f21
Date: Fri, 14 Jun 2024 19:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718394502

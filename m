Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405BF2F22
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727906154; cv=none; b=hC7fWJSSppJo3LKQl9+LgR1wfElrCbUstt1NbBoKdZ8ikpTqzgRJo1Wzelw+jJnqQQshuHC+lpUvs8fu57Xj6Un3uwxmds8ecbVFg5+6N6Fey/vIoG3CeeM2fSLXsh4kitmOT6KH8f+tOrb2Va0+VWypTDuqbVOlJqd2UX1eqZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727906154; c=relaxed/simple;
	bh=wXpQmkLDmBN9KPS5GHWNqWk4m0hCfEPjo/M+ArGlwBo=;
	h=To:Subject:From:Message-Id:Date; b=FEGoaW4Qev6eW25alf3hjBk/geJxjVnmviIPFM8mdFpX5dRGwGuJRu+PB30F3X6Sw2+6lZLcHyNusns688fD4AhurPXm2MbTYKeX05vyVYrX0QLBBLaeEbEADS2vRi2C6i2zPlcf2pnfuM4TekxFos2D2MP0+Sa7fGOTYh1VxVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vC9TbX2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC9TbX2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E0CC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727906153;
	bh=wXpQmkLDmBN9KPS5GHWNqWk4m0hCfEPjo/M+ArGlwBo=;
	h=To:Subject:From:Date:From;
	b=vC9TbX2ZgmWI7lscVyGjFQxedVZDAK69+A0Gj3X+E2ZS96Yv3qH0JDwGDxgnnwqWG
	 j/0YUVSSGTl0HfucMPu+OhNEu62KSdahAeYmWS7sEvlAEyGQqmNu2uxOOjt+6ZkIQd
	 EgeK6Mx/ijlV46H+jOlivhLPGSZuUr2GvK19elSBjmjJRpPxgVwM/yyIMZio1tm06U
	 ZnKH5e/47E5NWXUx+NWN97NIBbS3RP8DZx9ZArYdiL6bRrWJ0iyjwmHGby5i28SbZC
	 ETNkoW+Y01GOXy5T1slLKeUMD9EHZhxqKDu6VhTLTHFW3azCW+P73CI5nxJlBJaEwi
	 lcuKsyCrIZhkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9988FCF8540
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790615360.24469.2014918399109197701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad752c9ad5f6ea129565e807d955680ed2963f21a528991de1e0cd3291eeb2ee
Date: Wed, 02 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727906153

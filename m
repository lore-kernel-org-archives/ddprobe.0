Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14411381DE
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712527097; cv=none; b=P+M18W9ti087WdmpxC4G/usxcdu4FaZR9M0lGsjniC3FYWNeyq6pJHL/CDRzqkP53wROnxCNKFWZji6ARv16m4sYiNmq6OBqLmf/qRJ3eibxKX7xAYVfH+gSmnuF07Ka4meE06y2gYsMiWPahISU/e8dxFrd066BfT2kz2TCrQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712527097; c=relaxed/simple;
	bh=7Wu/t+StigjlG+wHxKc1PdqbmdDvDqtjeshtp0Nf5a4=;
	h=To:Subject:From:Message-Id:Date; b=ouZIC8d7JMv5WqNovgIEbJqHGl0N34nt05Oh9dJ4gxW7R8g6Vw/G5ECIaRJOskOQrygFTcbnyOdPlNeSmQkbec0Iy+qTRtDyvI7Y8Cz6UkqfUvUKwZW0g7mX9jK7ULKKt5Fc6md6/sNcbgDlM/YyQJzgqxTKGK526ZwVuWxF+GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVajQRLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVajQRLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83474C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712527096;
	bh=7Wu/t+StigjlG+wHxKc1PdqbmdDvDqtjeshtp0Nf5a4=;
	h=To:Subject:From:Date:From;
	b=DVajQRLUJSiJzAbV3l42zdf4dKDlMCJXyWnP6+dP1rkMKw+GDE7aRc35bYrcJrnf5
	 Eg6NLyyYb0bQK5mdiGWaVcjvkxVMZjLiEICBqPuCbxaKwqN9onB6EChXjmiBj2m3cP
	 egqEJE7b9Dvp8vsgsdZBuW/+BykKSZFhjhGm6NlGq+t79Ky6quDh5rQxQF4PXM7Hwz
	 gU31L2OUenS+X6w9k2g8D5WHfGoU4z4hg18lJ5zdX0Q2Xn3Rt7DfowcS2wuysYKGbS
	 e2HlQRzxycDNCrKtIdQEJmQH9wKjL5OIFM4LQNDcpiKmDvqqnj2GrwAraay0fALn4F
	 v5blod86jI7mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F491CD1292
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171252709640.9681.6342509111630417013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e91f027abbb7d12fb6a49b23fdd8dc5052a09a1ee9260105af18b2b6b63c29
Date: Sun, 07 Apr 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712527096

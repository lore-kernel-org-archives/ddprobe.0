Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D898D33D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F6FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673460687;
	bh=ruRRb3dIesIIJOabJv123GpXJ0hctv6iJLV1m+ivzXg=;
	h=To:Subject:From:Date:From;
	b=JB2qglurY63mm9vFLZk5BhyQ2Ff7t9ISFqZuozW65oHws4Zs1gxywxmLjWHl7aiMG
	 kH5yDpN2y3TiBIupaoqZn2+pFbxUciV1a1cNZkayYw3L/Pva3fIazEe50VbqSMEq2Y
	 Ay/wTlE0DlY/SdOTqTF2jRWhMF0urLBsjhFdGEUTwocLXv/LTPjgKEXMXM20+EMo3V
	 RNbf4LA7LGYIkVV1mqA1zDg2vkcqwcWaHC/fJ6N5s+O8O+RXr7VQWy97a61FqC54ZX
	 RVoVNY5xzIidfqR5Md99YqvTiALBDbca8e1AtoUdgEMUNWlCTExEzCOMz2nTq/qPXE
	 ULknibKgpqlpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6950EC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167346068742.9980.13535457293084796375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4070367a83723925d03b2c3e68c4c617d4a4308e1907bdc116d610923319db6
Date: Wed, 11 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673460687

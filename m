Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7882A31
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF02C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671413487;
	bh=4oUirUYvb+FzgYQJpSFePoOOJNNyahwRPaY/28T32IQ=;
	h=To:Subject:From:Date:From;
	b=GHTQ8VxeXTJNyp2H69Vpx9vq5IWCr70oc48fikRG5ECE4rTDiipvfDIwpCnBJsP+T
	 yhma8SV5XrHxmOD+leUOtwpOOg0DIVHoP5jv4KEBPhtdVBNmVF6CDCWABvKTzUYdmS
	 5NpYaLVCjEcum7WHnAURebh/Po05KRU2onJw6mRrW/Nu/g2YZrxnWnmde+0H4Mv2Sq
	 A9U9By+pN0x7AB7/lOV2v60LdpfDo/GNZIMr2CnuknPpu5DYN9dIG46wI6Zjoa58Sa
	 C7jGnZo+AlJkx8p3QCR7FJIuLKNIAg32IcGNPY1wHEa/sr1uGv7x7QU/uVTAX/KOXD
	 uIrMnovppn+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0BEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141348737.20985.3654506259222441698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b54352f66110cb654b58d8c88170d4143efc7ffcbe7e917bdce6f1b5cca896
Date: Mon, 19 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671413487

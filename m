Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CB21FA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D30C433D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669200654;
	bh=IxnHA0nz5gRgmZvplNjUNYWSSU4/psqbv5f+oUWBlrs=;
	h=To:Subject:From:Date:From;
	b=Qvq/0K8OXTxlQscml4Bk/szaPbv05b35N8BJWWc64OxSwQNCqzS5wNNWreLe1q0fD
	 zDndL+rvVs/yfCgn4wpBJ7+zetfzbIJwjAE1r6nKNqIPX7BSK6dFQc8tWMQVbxc7mf
	 aDoDX1Ul3FyOwXujAbw7sDRa59+vrPF5M0KkuSZmI8VMHi2MOvsLNPqNBcyoqr0q6Z
	 rHm/YY9nnU6+xk6rxC+4g+PqcEjDybpcbBEYJWXKyXvX0NR5jFYj4f0Wdnx7kyqkdP
	 2wHY6HCeXbAm3kn5nO6pU3tyS5VfSUaoPqSv/wcPJ7XmALyGhxwxS6qCBpYSPK7gz8
	 3sBXAU85QyX2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55536C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166920065434.4372.13654097105303732287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d31190c7410f0ad1479fc7121006226bce6b8ce371c7990633c4694f5dc3e09
Date: Wed, 23 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669200654

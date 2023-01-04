Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D338C29B2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81AFEC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672833087;
	bh=hAvOEc4TLdZ/sfrvEbdCxdH2+wyiVajGwPlNI+Tnl0U=;
	h=To:Subject:From:Date:From;
	b=NgwXN0QOiJgpBI5wZealYtjaynUttwQCH+XUxLItHDUKNBNpX0jIj8whBy6hx9HhA
	 wit+7Y/3IEDvqeZFTaVRYXapz3Jv0MZRLESJl6QyUeZMn5anJklEh36SOZ92+LNRQs
	 /1g2h2f2ldVylZyYLCe76Ed+cpfQu+YrR4uCwCmr63DvwO0GoDUg9GUUxsu8MJhGiN
	 mtKeP6VBiV6gsDwOwgEjQr4yJpDH69LnbM5SWPItNlqE6Z0aQLmVqYA9YTxYgDS0wF
	 9KI2QWd5ceoyA4lbo6KKnK/LoDakU7uwnpVZOJIbKZfx+IzOdvTGtpeRi4DSo5ibLE
	 3ymGaVKtbUFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662B5C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167283308740.27523.13615198125858475770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce0c4dec4b5d74a5ac4f325baf604020cb5aa22b20331f3f85f5c2cac20f400
Date: Wed, 04 Jan 2023 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672833087

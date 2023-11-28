Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDAF07E9
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afq9KzBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782ADC433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701134296;
	bh=9ERIda0nh7uKjLsjXoA+H516nIeL1IBt8ej+8l4je58=;
	h=To:Subject:From:Date:From;
	b=afq9KzBF9WZJriSOysE+O3n/ohFYj/kKAtKkYlcadmor4JEQwzxAUFmn8TKIjRjcB
	 40B7L1HXkQpOIzTI1R7xD9/v+ROo8o3F98AsKCGnWT1GZRxx00sfT/38xohjy+Q34W
	 vsTS8+uq0fGclJd39EBKdYWyhSY++XArGi2NNiByZAQc3IqbRlaczlZbSn+jK8M3VQ
	 g7DnByqsEtjtVOJXDe4K11CBngggJcWkTz5wREzna/ydCx/VVwiKbpxRawqkQWUbTH
	 4Vy0UlQt/vNaFl3cIe2DFvKzT0dNEECU9VEoa49oeGt2+rs9UqXtYt+dP7VCSCzgB9
	 BAccMEdJcC5Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C37BC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170113429637.28968.3667891501565558036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1077445d04744a3b2789b605eac16cb3827cc7154238c20fe346408a530e3ef
Date: Tue, 28 Nov 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701134296

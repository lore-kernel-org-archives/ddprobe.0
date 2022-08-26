Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38E54401
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8090CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661534452;
	bh=bL/XYJ0QBBnUjZH9+kTzr7G6SUD9/870IhWucqucYp8=;
	h=To:Subject:From:Date:From;
	b=IO7nJg1c5kIslZsWDwPvKa2iOU8+NhHO7Ft0gkbYsrWV0Xkmn6PHf7s/hBo3b6hOr
	 Y3Rq8dHgoj4oepRfUX3nDB2w2OnOvWc+QFU0Ktjjt7SXEmI7vHFXNHgyU7eY2EGrlD
	 mblSp5lfAJzD5PIcniBtI01hPgJWZJiQQW1nFaKfQMcG6B4z2ohe+qZFrmkdUThgNo
	 PDem3PAFAjJP7nL5hHXwpnYnnsE/9hP01BGMpS6VPrbx4RBsOOChLlITX5zTU7m20n
	 GL7LtETmbMC78cJ+v2wU1JwllKnSa7W5jZasW+VQo7HKhIiUJ8cXQRUKQgU1KD2ogw
	 CY9us/jI808Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64406ECAAA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153445240.19914.10262507690274231558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886448f59710cf3a0019010678beeb62f118f8480ba14ea48ed5e7519d264a17
Date: Fri, 26 Aug 2022 17:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661534452

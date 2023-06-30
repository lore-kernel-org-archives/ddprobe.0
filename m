Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70547AD45
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 23:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6711C433C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688169188;
	bh=w6Tm7Ot0cZdLjcfzunBjdT69NVNUvbOPn7VXNwPIDWg=;
	h=To:Subject:From:Date:From;
	b=olH7Ivhi/N+N9npsdK5Mnl8Aju6daTdJP4N9y7yw6bAWxEgwAWz3Z+5t0Y0T7vIki
	 XNEgBvBMI93SYm2newzSJaWKEfwT4Urux5RzN5fppSlyXvFQy+hTRBzgh3LofFDZaM
	 vMml8seT3SDhv6oqiRWlqqWted+cfK4+Yf42/oTt+RbVEJI95wt7KoNxE4zm5M2aPY
	 rGVJfPauTOVf3E0t/vHGz5gyLeyCV4qd7Lg+46EtFK+vIamGdPtN9MEmbqcVJghW1R
	 y3GpP9pmKSDxCrq+Q+n+UGY8O6O/IaViBQeHUVTV4FD1oh4RWtTVl/QnmDAMD3Fiik
	 zPDxKC32pr1nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A8EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816918870.2819.10412048633175374376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e075994a9d471e7d78a7f9da974ac236e5b137bdd37cf41ef888d7252184a0e1
Date: Fri, 30 Jun 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688169188

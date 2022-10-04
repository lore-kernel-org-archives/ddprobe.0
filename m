Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE3F440C
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756E9C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664906453;
	bh=RGEp8aPsCsjTFZ3Fj8ud2kJ8Lf+l5Urr+HplGu44iwk=;
	h=To:Subject:From:Date:From;
	b=SYVOrKusCHBuXe8V73uAd+7G9D24L0w6uwPk6hudbAreZvsprEkLjvmvEktCaqEmI
	 NU5jsMytog2MVvKdkT9HYi/m1H2uT/FPuw7Dh3QI7QIKbkvC9GsKI900aKkjvNvXfS
	 R4+Pi/3IHu6zABctsVWnfXyHvv/UTH+f9+9mM1CzaOtFkS5SWDs9dU7noKCr356Emg
	 QQ+fYxFA3HLArBIqle4WpKPlsLkb7affxkhJU0cl+fGQ6Z0GhyYGDkMbTwS0TrYP4O
	 4NplKWzZZIoSkL+l95/vn4PtVtpfbp+E30ElhysT0gKb4JkvDq061/XwpjzEcAcCQB
	 aOGM6f6mU4UcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB70C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166490645335.7825.12275818011790233298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7e6c344510d1ad58226339f9f4bfc4a3cec872b3de9b561a997ec73975d4ea
Date: Tue, 04 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664906453

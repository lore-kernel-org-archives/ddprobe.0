Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD051DA4C
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKNrBz8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94BD7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697817496;
	bh=csIflDOr+abynJriRFHXOZrJ+CbbOEPxnFcgE7BKfqU=;
	h=To:Subject:From:Date:From;
	b=IKNrBz8OT/gNHg6q9RtouFKa32bPwoy3MAzR6wC/amgBULMBmrRgKNbtUt26AmAh8
	 hAcBGM1WQI28dwCpUtaNgs7wVypZX0bpY6fSkSklliw3n+lPc+I9Pv/Vy9tflX3m3B
	 30MpqwkyLoVTCCJRzC6vdalnqZVgA81VfBCTIZ8wqbB0EaCABZD0dHGubOh+UQFe4w
	 O9jcKjiodppt4RD1pIHCNmTYpvn8gUvNWUH/tUT3sWI+9d0HJlTMShztct0mRO4KgT
	 2/2jV624tXccScsvuIPovzUMoQ57eV/0BiJN/wbEah9Hyro/o8RiCzn1RuN5UCXdit
	 Z3x+bM1gUwoKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C81CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781749646.16371.11464458920307812641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2aa2dee89f7c2a5cdbcf81f4a59895a84d7c224300a8005fea0c294f116d536
Date: Fri, 20 Oct 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697817496

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E59931B830
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765773774; cv=none; b=bCwMc2ZoG571ANBUTzBAY0ldkSaG5VqG7kLKcLGwtpIYLs3nUGhyPBGpDvKhaAVKBz5dVsyK0bCU8BalNrL4DeUhs3q7ZOe8tjYWgJFZHz1jlsyZTige5/ArU1Gvx6FlTG7AD8F1tiYOQEVqpwsndR6aLy3Hm3XfPAZ24/Q55rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765773774; c=relaxed/simple;
	bh=R4nwOsSJ5l0TmY0ZcNate/L4D+4pa1rr+SjWS8DhnjQ=;
	h=To:Subject:From:Message-Id:Date; b=ObqURlNL1EBFhO3sSU16NgKe1qDWYrBtlqnaBTJ6LyDEPIHHqseCjRw4/In8ayTS+h7KF1gJeuagds8tZiwO59pmIVIG/SffxywyOtMsf0DRQjZodX8E6nAVA9cfVjdvrKbjYxV6tbdHFIlRp7GOr/KrBmCRtOD69y5qMcQhY1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFEbcJlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFEbcJlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE02DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765773773;
	bh=R4nwOsSJ5l0TmY0ZcNate/L4D+4pa1rr+SjWS8DhnjQ=;
	h=To:Subject:From:Date:From;
	b=hFEbcJlfKEoUhtmnT82vTHj3FQKC0/Ov5+CVATfS3Y9weXy2Pz6QfnIbEmx0wolm9
	 QAtX+SB0ZcqOPd2BC9sPQhzu+8KNrCc9E/DZDVnpjgo9ynHIjdnO+4w/MG8ELnKQXa
	 GP/RnPfhJffhXgvXTKmICBGQNH1w/4i6UXIkHS7kffga4TeyOFTWAN+4RockJ5lgfq
	 /cceIbQoQYKVnaR2lOc1amWbVnSrIWFR6a9xBuhRbd4t8NFprTRzaSSmwHALmTS3c4
	 BnwCkELjtHAVrINXlwUsHVB2YFUulrRB1YYOqHJ6viME8pRZptAgWoKuJEYdhPFKbY
	 YZ3226aiOqYjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C27D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577377359.9105.8657029954562587588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9449decb11d27e0ecfb83243f72be597641908e1180110ff2ed73b2fd93c70be
Date: Mon, 15 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765773773

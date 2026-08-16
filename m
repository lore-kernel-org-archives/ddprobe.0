Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5065B23B62B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786891234; cv=none; b=c5XbNbErIAQCFsMSRYDPwDkhRQcDQfal4Lz5VgOxqVR0Ox4Tf3CuFmF2O+/2+OlCPmNDuP3fJh+6ua7Qa2umeokrDNGGln6eXFPse9Ap9Q+F7FDVkgXWTI4IxZBIKoHjPHsSp5kJUfhRNb5/Sd14pn5HvI+d3JDAVe732hmb3gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786891234; c=relaxed/simple;
	bh=UHzU/w7Nde2lseeqTwOdo4HFP5yJpGWKpN/x2j6gqzU=;
	h=To:Subject:From:Message-Id:Date; b=hNrXsEPHaH+qWb36tnqjhTw6hApdN0o6RUuBq1PjIACiKhz5w8QZORNVQJSAF+hLd+6dA6ydIxWu3FX1cRFGsWQYmzIWR24T2RnA4vrC6ad4k7FZlSxuzY8FGPvign7in+FcaG8GkVgAj5SNhJFJb+Ta00MxzaovxbK8MapOfJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iW9nrdui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iW9nrdui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD561C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786891233;
	bh=UHzU/w7Nde2lseeqTwOdo4HFP5yJpGWKpN/x2j6gqzU=;
	h=To:Subject:From:Date:From;
	b=iW9nrduijlyg784hR0t8i9Reklvb9hLt/tHQtihTO9T9csTZYRQpNtXGR/JP29kmC
	 2TVCjCDrAiSfZeuUVbwkiJnlC3eTjc0CdoCZD6Em1VeXwtPcPYdu0Ww1l9xoxBuqub
	 frkp+uPTgFsA9eUi0n7Q397pHMaoEMP3eU/P6i7yNy++fFw5TxbC/gdZnZOFV52CVL
	 jbGpJQz6DMMkZYB7+ukcLe5zWNDCJmdk0KxKCoa57pXT/x0BzSd2YMUj1Z+0RwibpH
	 tD+0otfoWYqHgVT41eQKYBZ4MYfIla0LJAZWYmulJBXY2VdFRU/UrfCHJsF0phJEqF
	 MMls330tesuMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61E2C5DF70
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689123372.25811.824838867592932552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06113d18a3198da849c8bb3837ab28ad11d563906ddfc499bc734117ae6bdd33
Date: Sun, 16 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786891233

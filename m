Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFF12C11FC
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755611994; cv=none; b=HSdqW8KjJEcLoOfRuccQsxwSq9LbBwBnNFRHA7V3A00wu4gltaopHrWF8DJSk/WOW7OCxEl3H0iY/tBQbIspcB2AujlXdCM7vKKMxGlDIsAc/jAHOEpl7T/H3yzEgX1uldN1KSIjXLoZRZc54QZjTVOmOLQiEyHRxIlBP11s3eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755611994; c=relaxed/simple;
	bh=kaP77A9mQKWrbmeguojvIcYbfbPan8w+ntmDxkXpvPY=;
	h=To:Subject:From:Message-Id:Date; b=aAzb1Uxqo3Jhad1XrAyk2DnEz9K2XWQZyD4ruY81u+S77JLuXt9RQIzPgRpkAHGhAkAhvnoqNaqRxA5NpQDylmZfR6qRsfMF++4F3PSsuifVg78NswHTUgRHAcxYOrtjkrJh/2z2o3A1IynfBxlvA1vFY5pamtLQ5nG+62ocwqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIeV5i/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIeV5i/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D917C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755611993;
	bh=kaP77A9mQKWrbmeguojvIcYbfbPan8w+ntmDxkXpvPY=;
	h=To:Subject:From:Date:From;
	b=TIeV5i/8K34IonBPoa/ILZWLLu4Hwfzhp5+lrnQOc65ijwxaIJkH2WHzEkSL2x/8g
	 q2X7ne6Pyxk+oYoBGfX3rjHArqhWMVgk7KPBdH1cCiarbi9BLCcr86SRVeQidiHH1v
	 UK6UVQWkmem9+9MKJgVrrvQcN8TvjRxZrzoZzATroO+PqoXiCNDykouipnbNf0d/SI
	 DVZpavckVNexv32y+SUzoyeEy7Eht2zwYA8Cb+2GA+ekI/jR35v5VSdNtYLZQsbAc2
	 yBtxEUe9xGiRoRqpUp9E0BHyq4Iq8fS6fc5vGVRZOnasrvBHNbhK3cz07d7N1q5nNT
	 TOJP3n1qZWofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99ACA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561199357.22155.1054658075042326933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd249300e0bab24422c156e28ea970fc152e58a3b771e484d9c9d3d696d2691e
Date: Tue, 19 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755611993

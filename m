Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D287346760
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764954774; cv=none; b=q5C49rbVEMoyZ4Zg5gAb1YJkmGxG0UOH7AmHj6cPQ+6NAY9d31NXTl5WhDS+8Il+pE10ZMxdKROLJOAwckrvWkcOW5WCpx1dCetNOnrLP4XO5sZQny3LyYmYUrRiQlGOC1MlpLbI4jXx03CaOsBSkqw3TS0AfgsX/pE+9xX8nZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764954774; c=relaxed/simple;
	bh=thO8WRo2TcGM4RILiafnvXAEzrJpOwYlEvldxc5fsBw=;
	h=To:Subject:From:Message-Id:Date; b=eL0Mc5JE7b/cMm8h503y93/7VdFrXVbEyEBLSTlYw/1YHH5TNpyysJTBj/HE3OapYjmbWA8iA/ZEUzO/KcStd8Ozg4Xem98gmehSNkBmZ/BgfgaN9mNz10ZteqM1pqj+BJ8DEalR741iIQNyHwn9xRITITmtYA8Yv546ftVmvLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMvpDQgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMvpDQgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E73C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764954773;
	bh=thO8WRo2TcGM4RILiafnvXAEzrJpOwYlEvldxc5fsBw=;
	h=To:Subject:From:Date:From;
	b=HMvpDQgpuPcUMeCsmidkv9B1mn6xOzEIaFeYtTaZ6y5FnDwcO6Imgsf+hey/Ld7ta
	 xBKg0M8U+IERXvSdvLhZvVYZMvo8xZu2URpD34aFmCZ17dmSkbXjomGz+B+pOeCjNf
	 eSRhIEnvqQ+nHUkiOYeiB7E/fQTgu1nCnlAlXC4d4zTTHN4tPkINR7S6VLSXrPte1K
	 Q7eZozLvREVg8h6MfAz4Cuo3rs+scaVz+YXz7GDO5LH0uQk4uhvNqdksSFBlYO8pBh
	 5Tje14/obqYkpOJvTVOueOzAR49nOa+kyBzEd3VFJnWa/l2aqlsp8h1EOLMf4yZmmG
	 iiC8NLnMecrcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A44D33998
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495477359.11617.7871008196229913982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca158b3e91032aaca4c43768969e9e0d6108ffbaa7a7dcc28eec53c02c18644
Date: Fri, 05 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764954773

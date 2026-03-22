Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0866E36B061
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774181694; cv=none; b=K+mYNW6BMFM4TOc4xlpgquXvpEDB6b3fKpQ0ofS+by3jCeF4MPH/F/u+SMJvXq3e77UJ5zJZh3wB0tSld03lEngcVqzYxQTzh1Ldx8e+qZZOyc3L8fGfDS48VgjV7uQifRjgIAjuKfSptBKWkP3NPZ2nlDbN96KFKVXxz79vvX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774181694; c=relaxed/simple;
	bh=y6Aum/qELBeTos7TvVXMKwCiE34r9iDaqEb2t5J+lkE=;
	h=To:Subject:From:Message-Id:Date; b=rzoKDlcQn+8HcF2IsCiOfNs8bhlZUDcUMFmjjLiNOjbm0t7K6OJW0T9xdwtIg0ivczN21fBoq7GTJFdSwde8MtEzzYokJDIdGgyLqLYHimmAXJBhDEyowsCNmHDd4e+Q7wyuf2G1GdGCO6ZdzEsCihOwb7ZuaJK3RRXXIROpBg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuCY4N2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuCY4N2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B1DC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774181693;
	bh=y6Aum/qELBeTos7TvVXMKwCiE34r9iDaqEb2t5J+lkE=;
	h=To:Subject:From:Date:From;
	b=YuCY4N2VQor1Pn/WB7pn8tJK0Vx8P5jNDLYUWydkxjbU5WAcXCXqDUldmqeUKXQhv
	 CE+SGU1TyL+kHEnw28nc46qGuCxEJnwM2VVN13M1WDh+w4ZHUcunonHn6c0f2j0WPE
	 gUBf7Qga1VDi5N2Y4qNj+SaE6exO19t8XECmX6zaah5e7yhJzqneETgJAeA0hAhbLX
	 HXAiwlGrzHEb4w6EiM2nJH7fKDs0sSaugXh3AHHRlw6wIwHkknOOlmwf3e7m9TFE5S
	 RhMb1XODCpO2Nt5lKL5uEMcgfRpLpP35rRAr7WUKqRJOy6Mh6Wch/api3fL1xs4t4V
	 QMhYFzMgiubmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FDFFC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418169358.27267.18150880489610813816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614eff7128908fc8ea368698f669365a079cb65b09dd03e96ade82e6d7f2e1af
Date: Sun, 22 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774181693

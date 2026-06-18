Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498F01E2858
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781813794; cv=none; b=oo++AgFVhYC9WrxJvD5R6YcyT5nWnZCMTbyaBR/9I0hwfzRdRQq9gU/gauU8SugcXW6gaFeL3rIR0L38Nq3CEjPf9PGGn0165aB4eOf3FE2YhwDXDEaqep/9EJro3Eva0iQ5LbWxlP+Zn1cAcOgbJ9Fep8Q8AoJ9Mnx9K0x92ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781813794; c=relaxed/simple;
	bh=cezjOTcn0wbkcw8r/0fqE9/JXORsO4DQfRELLdKGX+g=;
	h=To:Subject:From:Message-Id:Date; b=VSe/3Rh8rgak7mug+OOxxHFYcZ81V4489YjjadMgqwnaF4Jag69Zzq5v/M8mAnVUK1Bl8KdvzZVWZYpyOuM8OTuAEtbe7y32zXhQRqVeXYUc0NtqkP+SfB5P+qBcoKMvKhuivmlq6dXkkvTa7GsxIIFcq9e9+hecO4Sfbozvdxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjjHpjEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjjHpjEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9A9C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781813793;
	bh=cezjOTcn0wbkcw8r/0fqE9/JXORsO4DQfRELLdKGX+g=;
	h=To:Subject:From:Date:From;
	b=fjjHpjECcEaDDhbv3H/Ie/zSw015ej9BqaJHbwxYWx2IeV4FVNverDHY4ZHcaP+8+
	 3wKDvDSjFib6R16FbvQNn7fPstbqpjX6PdJ1kDk5EEMh88TFhNAoRcONVoEh747sjF
	 MBSc6nNnQO9qU/Edt3MgJobBpiLUDXnKebBX8RfiCtaQvUHPJjYTrxpXn8ZJ//6Qmw
	 XsH5scTl9PILhWQOkJSRISaWlpLD//D8G486bw1vxTNwlLqsq14HBlLsrlJMU+XWfu
	 HmVDwBHOQL0bA5AC7rfbfA+I0m3ZHfD8/vCSXO8/Cp0qiVx4mAvF/nD8jlXxo1dLcF
	 cN59wlV1i/7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B868BCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181379371.6846.9328128633943206382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad71aad4cebedbe0fa9d84a20998ba2af673ec7cde24c11744453f1c3533cad4
Date: Thu, 18 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781813793

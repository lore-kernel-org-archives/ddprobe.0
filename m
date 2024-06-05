Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3806418C348
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717584983; cv=none; b=GqyrSz/ZvtC76mEVR67dkqTs2iJDLSRovXFUmMGOk/kcKAGhm4WHIoGY+Q6wwk18BHFyJoqmIcil/lxiXoGO21+0u5D3YkdUmyv4vRoS9TL/tLdbcuDcctqmrjI9GnfpbWqdcQTUWgSOHuwbbrteC63zwQ6nzGJOV8ecKsHxPXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717584983; c=relaxed/simple;
	bh=0FPPcsC6vpzgIg2i7zqzsC0eU2bwzqZQF0zO6j8VklE=;
	h=To:Subject:From:Message-Id:Date; b=r/1yyHelpA/0zlfAiXK0yDgJisz/tw/jCqAwbg8tKnfi91pbHmHcr2aG2Z0COOYEvKko8x5d3dDd8kBCUcssMcwVR9+3hgV+2VqcUzUZA17w8OJV5GSVQAgwXtCp/FO51idR06DyK2FRNQHlH/p9u3g9FYefbSE8vqn2sVyFlcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PknBN7Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PknBN7Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C90C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717584982;
	bh=0FPPcsC6vpzgIg2i7zqzsC0eU2bwzqZQF0zO6j8VklE=;
	h=To:Subject:From:Date:From;
	b=PknBN7XjvmxdCeUPOzkgp8pCl7ezDWwU2YyI+X2zYH1IY+qO7E/Ds0oAw7XcXy2RF
	 QsqkIyrt4ntRyb1rzE0U952sHSwbgwM2wBpgzcNKMLeHDu0Mw5s9w7mKRLi3OZnRVk
	 +/Rc+YdVOArcGgYF7U7D2mQjKDOBR3zbOCMqPGncyDHl/Eg+HIkqsV3lKRVJkxDA59
	 iRQisymoMKyQh44IzgZLye8jt3jAIvLqAmwvPOaW7D9tMxkWUdbFNgnpnV8H7SFlG4
	 IF3SJRj9bBS0YKxiPcQgyUop+J6cXgKClAlemN3LT+XQupVGnfN3BmzmWiCUI0HPO/
	 GXwlBglltR9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB96C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758498276.19297.6797940524522155324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af292934d55051a17c76ab386e624a45a5bac392e358e01f1891fd154f18eb5
Date: Wed, 05 Jun 2024 10:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717584982

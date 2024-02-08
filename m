Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E07F7CF23
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707412697; cv=none; b=oemIaAuOLBeEcLV4Oq6zuHD6+2RmuIc6X4hW8rgVUFt3+vppZxmGtjIWkRcHIBJfvhcj08iRRqoUiiwn7p4ILfvKesTzlIod3WQqUSSOtpiNzx+r/O3DZ8MDXAKxAf2knqNfvLP7pUdcO9SADO1ds2lqIOVT45TMfcweY/qbeuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707412697; c=relaxed/simple;
	bh=CMOJeS68aLq/MKBoHjkD60ZFWy3ai02ro5uzPUmgXtU=;
	h=To:Subject:From:Message-Id:Date; b=h9mCFXC4i0KD+lw/Nc0aZ8nCp0NiNk1SINQ06sl6e/bPkfQvmH89ssixeArSN57no6lmvKJt55v60gW53uF4mf5vCwZ53vqgdmsCXcJvVj9k7FgJ1yZJSjnjwP1mdwzwIj5Lp2M2ZzcXVWMkCKcAySdf0q0y/Wn9XIW4QznEx3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oebp6ZzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oebp6ZzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90CB8C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707412696;
	bh=CMOJeS68aLq/MKBoHjkD60ZFWy3ai02ro5uzPUmgXtU=;
	h=To:Subject:From:Date:From;
	b=Oebp6ZzPVrmU6yFNkCjozf2Y8LzwibS3H2JI/WCc7BJNDdK3gqc9js4eJYpOlXVcq
	 mvRuS9gP5wITMi9kN1ddt6Ty1fWlxshJ5AEk9GX9EZD6PWcg+QOCr995EYu+zW1wvO
	 dCVI5MLUyO/Bun7NsN/sqV0TOZiHw4w3zBA2tB3k0Wev7PhbE84tyeWME16ZuXhC9u
	 KUKBVW+N+LS4hZedXWYpt7BlO34Fh/zhSVqxJJPL/LxhIvgpSxs1lwrC2MeJAiuEtA
	 xJ84Fu9a1ohqnFF4HBpvj3+vI8uZ6QlAjUyw4JuS+F9Z3v9KvRkF62ZOkWQeFv5dKy
	 5bt0SFxTf5g/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F879C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170741269644.16852.14312576984607513787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9939eec1ec9e127bb3d5f70dcbb70ab413c97c3a54038cc7f3314aa9605e4e1b
Date: Thu, 08 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707412696

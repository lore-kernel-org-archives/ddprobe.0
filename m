Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E36376BF4
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789267834; cv=none; b=um4uTuvsLnz6alH7jktv/U/0x+08vMp2BH8oxTzYfRBi2GN8mpCKE2xipcD97Gk97PSlXBTfag2oV/GEuXNaICuqPT1OfLTK7zQR1O4aZw0WtPFfa1SpALkqv0XUZ+XGhF54MhbE2HXKl5EQlWo2iTALN9H0GCkXyi0QzjEwW0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789267834; c=relaxed/simple;
	bh=8jq2LRifU0YNeBEkDejdRXSLpD8bZaKsb+VErlCEAVo=;
	h=To:Subject:From:Message-Id:Date; b=qxaaouJ0beIiN5lr/eF9CV51jz/BxC3gxCZ3GkepdVnoO8cyTnNUqDVSNf7vhk467eVxK2iilhps5OTxlQe+1p1C/z/ZsgnF9bXqyLcPGLYuaJQfY1hJEAbaqTD4YpQaMw9zG09QV2tKxn+Tf8WG10SrTyotXHe1+xh9y2mzxlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7mtc1W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7mtc1W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8687C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789267833;
	bh=8jq2LRifU0YNeBEkDejdRXSLpD8bZaKsb+VErlCEAVo=;
	h=To:Subject:From:Date:From;
	b=p7mtc1W1nNgpxgkwlCZ3w3oxwmOTuXsjxKhu6qxicWhVcy2gup+YNG4wR+R5n5PPX
	 XFi2eAyYmch09WmoAkmWbydY3qwUkm1cXDmVsrPO6lKhxSpQ71surHs2aAvXyDGC40
	 0lc0stTLGvCZ00Yx2ZLF7L66o7EI072CIhuoL8O+oQ7vEB7aNy2PY7i5ZYTR+RC92B
	 tM7tq0Rc3DWSgqehUzcASq0UL+qswcVneoC1nMAdkHZkGBL09utOHJ2s8iUCObB4u3
	 Rjh0qPfQ5runbj8+2lv6WlW8MXmw3jCQPOLfX/3plEPq+t3Icurw3OqcNKs83Hhvbd
	 D0iR+/o3yceOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF29CC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926783369.22619.1254605981638912382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165ecd3c1aaaae43094f6ce65adbc61135ecdbfee4684defe4152715e3686c5f
Date: Sun, 13 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789267833

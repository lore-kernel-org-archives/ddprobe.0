Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30504387590
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776782254; cv=none; b=t9NLpEeTcODtRcvpD/SMQ94Eq7khfr2Y2+/+VdwTIEXRFvKzzJ8jaSjwH7y7SuZfefpHwcVLKF7HZgNzfx4u3H41p04cPwR9GlB45HaLndvlQvppXMOlSKQOKYxe6qqUkY2+P23Oj0Xf/BDtbu8lVynu+bRzxLyae4VYAj9+0R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776782254; c=relaxed/simple;
	bh=qBpT+eZkFeMEJcztoVlSs66mLAgOF7p7p/SpBzVk5LI=;
	h=To:Subject:From:Message-Id:Date; b=tHMPt4LrZq5YEShlxS+FHOFgCXzC9B1oXQLdq8zOLySHoNWNDfO4MG9pGcIP5aR5tnjppGkjaZ99A99IXzcuIr+AFvLpG9kmtv/nqVWdGyNbkiTdsx0+3c+uDNlL+EOCHIi9JoWkdEvld8OlagpoNSdlmBUvXxMyfnT37+Y0VG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6sVK/pP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6sVK/pP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7790C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776782253;
	bh=qBpT+eZkFeMEJcztoVlSs66mLAgOF7p7p/SpBzVk5LI=;
	h=To:Subject:From:Date:From;
	b=d6sVK/pP85yGfbzVmRiEHYp88guNiBWL7xie6Iijv/Aclv2D1uuOX+MK5J0HRFoqh
	 dI1Cob28UloLx/7gAi2Ee3lwiQ5sJqmnEyA7PLT2YoqJcZgfbCASwOvnM2crBShTeL
	 iGeUSwAGYK5/gHIm4Usk6f/PoOSlFMWdWUJZx3qWC1iXZq9TJShZPH4Fyz8OX9HN8+
	 6tCkGRQ+Jdmop1UgGGdGL4SS/ImQZyvwi7zncTYPEfkMB33vTFu5yYXxF1WyGCqOwz
	 rmstCD0eGwlv1JUUUM/lEuXb7HdtPw7pbkZn8jLZRweMc4UKy3/fT6NJawrcewo3Ah
	 RbBsSJ3jK5inQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A962EF8FA84
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678225368.20009.17580509788227222539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10e88d50a0fd9cdbc6642bd9618449c2aaeffa45761f8a127e684a7d0484759
Date: Tue, 21 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776782253

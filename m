Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E3F275B1A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776599854; cv=none; b=fFVtnL3PFIu3a48ZnNrosiOb2DwwbOCmQ3s3z3n/i+uK1YyM2cvNreExd1NrCA192kDHhgb08URAsrRgDvOQUTJniqq8dFG4Hc5tB2c0PJ9UaLvOj1/DDRzbq6FOtu58cCysFNKBVB3lX36pghmNgk3toYLpZl9ZQDGlG3nYrjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776599854; c=relaxed/simple;
	bh=jQi3DNA8SK8nRG7zX9E9GJ58MJjLcK+99j7sYD6e7sU=;
	h=To:Subject:From:Message-Id:Date; b=fN4xvL/fjbs4eyEsODppSWUhE+VcTderIqTmhHs5C2DL9G56aFMVBqwX7fL8KUyEY3eAvWlfAxnJwi/ZgpNy/1KhClzsz8UbJTbQkPhyq98Ficl0VavqVixE2OgIxWWt/1j1tS045TxP4GArqvN0d/u+89M51dHxxSoHU5O574c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYTK3mD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYTK3mD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3F4C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776599853;
	bh=jQi3DNA8SK8nRG7zX9E9GJ58MJjLcK+99j7sYD6e7sU=;
	h=To:Subject:From:Date:From;
	b=AYTK3mD1EEanLr1D7Qd2tshAsspzVPvvKsq3K4ezFW0KKzEqWZI5YceEqILf4kj9k
	 IwvJJTu0DYkF6S+6VIGG1gs/VK0NPFLz8NfZwSDcHruFFpDnpsHFD0sQCHk4sFyvAS
	 H0L/0y5G6DCJn7Pk7NO5W2LaJOrDoPIklnWoppw5hb6Qeu/0Ft/jZx40wXYRzXxedj
	 WGQaagvnz6WqW8UqrQFoi1FCLRvG/DSn8OZPxQQcBLae0/eHy8YhKg9w7M5jzj8Jji
	 4ksAl9Kuq7B/4qXJPf5qs5aT5Fx0t86lrCrKmxrH7eGOK9p7nbYTs2rWkZLDME6cGQ
	 6YRU21+7wC7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A996CEA7199
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659985368.30362.13259564737593542761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179b94447aab7f7357c834c3a164489dd42c8910416d9da1efa538e8fd83b331
Date: Sun, 19 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776599853

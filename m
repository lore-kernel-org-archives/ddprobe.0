Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAA2391505
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774644294; cv=none; b=k0K46xb/dI5WHLj6OFJ5JRUKJ2Nfho7gnmnwNg+08kHulfAFMuNcWbLfvlJUliApE18Qdq7aAUjd6lExo/nKFNGYducc4YV7tTm++8A+MT5c2dY3T1fwjKwx5JsKS2XIWtGmEoNMk+XoSywxkUBYLG+eUA5VKFQCDDi6S9yf1+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774644294; c=relaxed/simple;
	bh=bgB+ZP394o26CVFWVn+cXrz7npoAom/RRMHI70VUCOA=;
	h=To:Subject:From:Message-Id:Date; b=U48HZOFCCdO3QWsS9k6fimSjsGtzJWYJutYfk0nZc8vG2gmLLHhqlfDlSdGLHJccE0yf+qZjav4ZS2set68eh7FXJ2XW/n463hhJMSK9sM4uBUXDGqfEjA+TrLPqtS+W3AYAyHMc2/ZHUWqy29Ff3QKmJtuhfGy4HmwjMrRfEVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfYEU6uQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfYEU6uQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E73C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774644293;
	bh=bgB+ZP394o26CVFWVn+cXrz7npoAom/RRMHI70VUCOA=;
	h=To:Subject:From:Date:From;
	b=TfYEU6uQGLD0QntI7FE/KY38IbZELheAGwFqu6shT5AZFFqBYbdu7244ikAficeao
	 0KJHj8sRoOzpRhm1B607JHAO8ku6NI2aYHWBY0bFPI5FQJUDZZDGCbk4Waw6msGg/D
	 QlJYXHL3eNKRoN7+yjaJfgCjjNkRuk6YrqRWPwjrOCts1cz+HyaSpOG9JFucXFeDbh
	 tXuwJbvjxE3Brcq1f68UdrLktrn+u7dpefh0Oq8qTjvTu0KE3R8lyc5zDwo4qeBobq
	 S+6uMXGv9NHPdrwtPDysVIULCu+DWfqrgrAzyrgDTAAXk1FfJyxfAsEYUuHoGEh6zc
	 7l9NM/KFxdFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE410F2870
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464429360.12870.6488895606088334405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69367119d0556071bc0599c1ed03fe23248da0954c0b4e50b1cf65c7ac029c7
Date: Fri, 27 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774644293

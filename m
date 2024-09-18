Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE31CA6A1
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726692954; cv=none; b=e9eE/SI3u/Af75TK55vFDsy+olmqO3LLG/7k1Z+A3iiqlFeASvwZcb2pIgTbNVU+YmvzyU5N+OgaDuDvU41Jl0d5maFcpw+c9sE4Rr17A6xSIJXlFOGHcSfAs6S6ECy6iiQYFvVdUfTReA8z7cjVphzDV9sj6+9MRXqtWdbyUXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726692954; c=relaxed/simple;
	bh=rOtgn2U2abx/uSgq9r1x1+azxyfuaeGkCEeVb4ejRkg=;
	h=To:Subject:From:Message-Id:Date; b=JnR4kkNQ2X7RyIw4yNvPr2U1hy6asx0b9zuTsaJYw6hQHneb2FdxTnQaW61fJsbCNhUYlFjA2zsJwpXIehibYHuFxhsdyVhwijnsC9WEzQijE9c21H77j7U6zRmZNjdPzqxNJitLcEIxH8wLeuIw/w12NHZ4QGiimAIWx8j58gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSQSQqdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSQSQqdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE0C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726692953;
	bh=rOtgn2U2abx/uSgq9r1x1+azxyfuaeGkCEeVb4ejRkg=;
	h=To:Subject:From:Date:From;
	b=XSQSQqdBGg3OZeHGK2q0zidYTVXg61Sa/UKioEyyaBVfzUq8Cxve5Kg5/r+oVesRD
	 o8TNBNJHhp7I0uzFJWGoPssJUwGFV0B6mXDxDFC/XfIyrLDFr3YtZokwH+LZTEpfZA
	 +F0q3qiRHJqwu/BTm2Hq5aDpabEytYxC3pjfI1vrYMMAlwqpi/m1RCof6QswTzdRNN
	 xFFjOcjXqce2cXxCptL557Kws3Rjv1MQBN/QuB6Q/GtzRycsKsnu+/Jl+ab7xpwNlk
	 YxyeuMjLFRNabsxC7iPx9V7YqFdfeitQ6eYZuHWGvoTMwVx6G4wZQmxLqF5/8XAw6v
	 HnjyyoFpdVYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BEFCDD556
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669295359.20014.14174171247292338285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed75d23ff3df4da12eb02b68eaa53102257c3412bc605cda4efa8faae341911
Date: Wed, 18 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726692953

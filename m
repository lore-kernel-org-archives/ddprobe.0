Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311321EE017
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748686794; cv=none; b=u3QdymjzU+ue0KrwlMip5+izLbyhX/AQH7XgivYxXjg58Vv+5uZ3clt9gf9l+I4E395vpaG/0aL1NTlfCZaO9O24/BKxEmFpYuy0KJ+HWzFkIPGWlnFfxGxb9NFQkDwDThW+xAyUEUc/SI9JTQbsMXZYyO5nnedheIDHanYpgNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748686794; c=relaxed/simple;
	bh=7SZrI0lowxYsT2jah99Ftx1SU0MF4PfaAnaWztCM8Js=;
	h=To:Subject:From:Message-Id:Date; b=HFJoahPlTWFbZ36NRobIQPoj5yE2etCP481XpPFl+YdZnaGiY7fxD9M3BSWQb3MWzuAzwprpQS1WpAxD7cT7gYGIBIY17KPbd8BkcmanSxnmyb1pjLG2cy6W5jVGY8//7aQQ/StAfxtzMGpt0Tie7nxN1MWORGOI4wSv5Lx/N5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W16fF1dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W16fF1dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748686793;
	bh=7SZrI0lowxYsT2jah99Ftx1SU0MF4PfaAnaWztCM8Js=;
	h=To:Subject:From:Date:From;
	b=W16fF1dvy3SiK4DocRTinV5hcD2i5v4GDD6/64TWWlS6UkdTUU0vpxl+uGQFYCM1J
	 RSlvoMYdF2aP83r6Mxrn1ay80L20uEWs3zIKxFZskI0gb4vUcv+8aY+Spqttpkpi/l
	 3x5v5ag39uW1V2N4gKZhZOuzLOAKvXFdn6QBGh9VSdqSFUM73GrbbV0Pncya6etI1d
	 /MQJktCSYBYHGnkCE2ZUty+h6jAH4rQkBtNdBsR6Pgux8F4pBDBTXt+cfmoUjknESk
	 omeD3WVXuBlC4cK7ZHk8VElZKlqd+lkVZzCMYBnuO2L4slVyNM7aRBgUKFM66bFSa8
	 zh55aeDYOLQ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E4C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868679357.29620.15827719357092569084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7572bffdb719c7fe7c471471253436c7a368784fbc7c3cb7b508be70d0469a23
Date: Sat, 31 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748686793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8DF1684A4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771547694; cv=none; b=d0ZHaFSXu09u/O5GNOOcsgUkYi7kLCbfGzlKAzsmmXR7qdi4TK6fLqNFr7rMkINcq/ugsHHErkPOMaeniyG6NOfA2t6qEoAMy9IojMy8TVJ3e+fhEh8jy9nMm5JlcTlgFQiNatnFx+Bg5AvWcvUMnEcgXL6gzA4J1UJF+UqaMQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771547694; c=relaxed/simple;
	bh=h4KdMyWeICRRyWwgNnC+NCsubAHb80vJHpq0zlOgclQ=;
	h=To:Subject:From:Message-Id:Date; b=qy25pN66i3Ne+F5cB78471j3F0VDjUfO6FaB6uHwjyefpCu7y5O1wjor24oUTZ9CVSoxQzSbOOjGisMgrOY0nB/lBIZQfJHdt2nEdzUdcLcbwJevPz6IFn+qfurSwY911QMbwjfuTE4fBS1BSpKZhyHFfTn5Lxg7ntYdcTyYsYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8S/3BTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8S/3BTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F62C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771547693;
	bh=h4KdMyWeICRRyWwgNnC+NCsubAHb80vJHpq0zlOgclQ=;
	h=To:Subject:From:Date:From;
	b=Q8S/3BTAidmfSzmvuyg0HxXZvn8MLhi4sOU6wLEk4YjA0Bqhr/4mV1U9rDKD5OxN2
	 NyXqRwB3A7t7YRhnA5i4S6YffHiSdFbsmAYzTaEfo7uhlWmgHZmH0sp0cv1wXd0Hbe
	 HngO+OFMHTh/MmUWpxqRuD8QuT0L9oJJvEqnKVZY3K2pkoop408n3bOKC2MLx7AWGA
	 KXbgiZ9E0Q5yJNhaj6cHfk99bA4jYBoTW4yAJjlmHecYlNSwazaQ8Yi2u5LmBP6LtJ
	 dVvAkoiX1tanuxhLLQ5sXO+JSry3qmMc5tOsxyy7jJB7j5KngC92+/2CXnfPPpU9BD
	 Tc7ou1KKDHUpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D2C531F4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154769360.16401.15934398216436408169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698eb1267a565e2086e8fd09b945b13ba0818341a3cbe2b4b105764c4ab68d57
Date: Fri, 20 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771547693

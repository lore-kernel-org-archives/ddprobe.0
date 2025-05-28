Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD62928DF04
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748452793; cv=none; b=Bq6yBj6B620tQf9eKr25cQlqfIhoTQwG7BsSpgnXh9IiaazSwqTOL/956JRSOxdbbGg6K7GMThxlkicz60CV/PYj0+T6Dj7GscoB7MlpVsyLguR9xDHMuhmNX6sCpuIEFnIrCm6216rZanQILlk0g17SCklG3v5Wt4EY3sn8Tl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748452793; c=relaxed/simple;
	bh=UhAZdWXvlntd2xtunGDy3mpGUHpfAQ6nJzsgdK5s1yU=;
	h=To:Subject:From:Message-Id:Date; b=QUbW7xE+YWwFQnjt4h/ykVExsMff4DK4b9F02Jni3YCNw86Di0uYz2f3KyS2vkXW7JqfdBTQFf3EiKH9BY9l0lLb4aCPyhELsB+CLS8z37wy0MDo7HiQlS1zyf7mZpepHHDY4UpmP3t2JMggJOym7iOlaaSQIxI4jwG1Y2JzjsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqFjjDi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqFjjDi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1498C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748452793;
	bh=UhAZdWXvlntd2xtunGDy3mpGUHpfAQ6nJzsgdK5s1yU=;
	h=To:Subject:From:Date:From;
	b=AqFjjDi3Mn9mW6dbXbrzX5ntqRil6wDskY+QUU5AiRQq+9j4NxT5pDccBHBThXD/x
	 n6RGTebb/n1OVEol52+5uNKf3kS410UQmADgbbNbRKqppVqaKFUWOv6knnlmtMFd4v
	 1kOzi3nvyp/3VGpZezc4mADtVfeE8pQCszax5hV9oIEVVOar1HkmVJTktghOvJxnub
	 TxrHFxY2y3mLP5JYCBHUAKyLdRCnagXB53NJoes+AeXCQ/K9L9gTltgob7JhGyBZqo
	 tHOrOhFJNk/mRgcVwiMI+UzYzHd34W0Y0c5zuUncLcrfTr1HAWOq4olHoSCDoK4cT4
	 DymJFegRTHKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F804C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845279357.9737.13077464177886416109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b453122b3fa4ed122b8e7b7693b8be62f4b035f7a8af9a3a133bc38c2c28f37
Date: Wed, 28 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748452793

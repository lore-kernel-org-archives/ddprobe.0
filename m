Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395E9257455
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742907594; cv=none; b=tM5LULZBxJw4t8dXnelqXc9EjYauZqq176yGjv7q+d9lI4r308cQPLLgFWlwF6JnW1wD15mHoYklup6IUmNuGF2j7Gqd26T8FOVXPLmD7jJJbQaHqAoHBjms29AMV2MKIYq4he/C66nGARvEZp6ozIZs119H25UoWmxUCpTfOws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742907594; c=relaxed/simple;
	bh=4uEDwvKVy0IlzNQCT1MWlTD/Fm90iqHtlkLwIWV7ong=;
	h=To:Subject:From:Message-Id:Date; b=WNmxZhyU7XqmbUSO71AExlQY6odfSXtHSn7oOGAM4f8HMNSc7X04FvqMdrZH0R1Nci9QV7M0iJTAwRRAQRTukINdJ2Pg4vWqvOB7paROmXx1OHc11meIL5GIR5H+yCOcl9K+3jpxsBZ1FNwGs/5LPKyF/ZQzpFn3DopaJtkOjVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PW1ZWMJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PW1ZWMJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED7FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742907593;
	bh=4uEDwvKVy0IlzNQCT1MWlTD/Fm90iqHtlkLwIWV7ong=;
	h=To:Subject:From:Date:From;
	b=PW1ZWMJBuO5KN5ROXgv4RNFMUVO5tDmCAJ2tOzU7rXIdXLdTA97AWoboO7DbuJVTS
	 u6aVLlZAkPeOp2O5S02A6l3+4IotCd/0NiRI9lTjlrYkWRofQS7GLV1Jvb6/Swu6OA
	 5zJ3sbEVhMgdqQ1vQQ7pVzrnHqsgJvOAizCUZ3sNbQi/bqUQMJNPkTwk0RLIJZbKKT
	 gC7qWeTEWYEdfi6HiIDPAjoFtAnc72V5lutmjaGxrQ/zFtgx+cfgbyJEoX44IJVUvv
	 znMJs2/gyPgbzBkMsObHyyS0DJi/EwnG9aSs22IgKfQs+NghZlaUJsyyspWPLtOtWi
	 Ws5zhBxcUH1pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C143C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290759363.3412.12077205388219178340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f4143aafb2d1ecbc527dad80f382d7b9c810c2249305bdb7ab09921302dbba
Date: Tue, 25 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742907593

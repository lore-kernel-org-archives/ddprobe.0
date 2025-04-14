Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F54B265601
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744625394; cv=none; b=TygqXdcOqYN3KKDgG6YApcHvVMUVqCfxQIiM0/yaL7bA+wnLeuCX4Q3YJ6f3eSq0TOGM6rEumymLpU5uUOxXpwABhTXOTCDVjfIrNDcvwvBzP3QTYxWKy15vO9oOl0OMd2iJpunHehhsWDwtZOdFhZqb/MBpc96tBZj1u1j3sq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744625394; c=relaxed/simple;
	bh=wtqA7/zFe49QAaSBB+RhSP+G+hupFcl0wi7p2n2xqaA=;
	h=To:Subject:From:Message-Id:Date; b=gANlRa5ughG+IPuPXMzdQUHqxQgvwInQDypRbRbw6XbAFGkS/lHCqVySJ3zctyx1pvFpQoomMAnB50k//eQGLP0VrJKiowd9675pNznr7ABAWrDWalCJodhxd7d9hOaOBHhP7FVKYcG691btq4ZVP54JLbwjl2yhGkQ0pn7cOA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ez1neKjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ez1neKjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DFEC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744625393;
	bh=wtqA7/zFe49QAaSBB+RhSP+G+hupFcl0wi7p2n2xqaA=;
	h=To:Subject:From:Date:From;
	b=ez1neKjLxqVMZdEpQ8wzx5C0tTTl6diuWrh2c2unhjHvPNs8oIq1VfXiJEuQlMk15
	 3R94qjmhVOi2dRZFJVQcboeB+Wz5XLjEL2c+DhyfEwRr07H6n4V3ZjnQ8UV5OU1/YE
	 E9F/pEZwM3Jrz7y1JzVJwihtcVxiCdlqXB2OiX/serWeTAt50kOu+XOvqTIZdd+wSR
	 R5Gr1XTNJxj1TDclW+dt3os70PNk7FA+rrQJCW9bKhlqLKx3ZtNyBneruQq8VEJl83
	 0HVumW9s9F9lMoMGppt6SSZamFhYvqPzopqls/S1hIYWkiUuO5alwX7y6Z5iiW+MX+
	 OJ21guB+89Big==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912EBC369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462539358.32264.4506542442610904047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e52957b73516452b2b35c88d527e07d64ae38be828ca3b3c8785710ed466e1
Date: Mon, 14 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744625393

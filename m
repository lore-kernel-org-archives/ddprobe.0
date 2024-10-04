Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0F414D2B3
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728084354; cv=none; b=IL1x6F4iPesX1kHJVGEsiX5UFwRDIe/5k73qh0ygr5J1vBE59PjWt4CQeaIIf5aVf9JI0v4AjyY9wyLX99LGlaghJb/zr/5w2FEe7Rq0kwWuReBnu6hLz2d6Hirhufjp6/JHx+msKpeUlRILFl6fxJqLM46ba9Ml2DzY3eBFqlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728084354; c=relaxed/simple;
	bh=Acs+CJi7ibgRZh2yYEF930XuMW6No4Fb9n/++o1fBlc=;
	h=To:Subject:From:Message-Id:Date; b=jfZtLB83QEcp7H6UVjEsEdNH+p+TEKc2CzQVtnxCF9vW7VngmGkbkhwFm8b6o0AWoZz+eIyYArxo8I+VJ7Q8WOGHP3+xVJu4y4/5WdzrPMm3YSS2Duh+UHox4hIQLhKZKQ/eqE1eWNLag4tMabB0PB0Um+qkqp6OEBTSERcX43g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZkFoQU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZkFoQU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF319C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728084353;
	bh=Acs+CJi7ibgRZh2yYEF930XuMW6No4Fb9n/++o1fBlc=;
	h=To:Subject:From:Date:From;
	b=aZkFoQU6QjWAi987VAXGpJF5K0kbN8R9SmhS6qzyLSvquk/F3Rax1Ah3FxA7Tth9n
	 j2zh6riE7/SSpdoze6sF4R3zKNFyaZSOUs9/OD19OW9m/F1fQcWaTFYSOW3DurE78x
	 E3QLr+x5T5dOjDPvIq59umRSTOlAqDYRK0jFwH4xBq5rwAhcV7tvr8m7WAfJZj+f3b
	 v/RacDITreAyWl7QBu8hqeYsnvuxrtXikKBvJtFqdsK8b6fYgw19gI8okGakIycDmM
	 e7pF140TRPlEQ66C0RAp/opEJUPKsPFHqrE51Yev++fxbG5XsYtHUuqPkYxo/U9hw7
	 mLFvzMWTv+s5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEA7CF8852
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808435361.23153.3250533309951488309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9228a8aabb79ddc121b6ac41132528f075bb3707c28123b00cb74476916dea37
Date: Fri, 04 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728084353

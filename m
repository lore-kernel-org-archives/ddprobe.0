Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DAD10E5
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706833697; cv=none; b=Ue6mx+MG08DVlzNj5VjhbBg3mWuUTMJ9o8coBjXm3h2gHaUslVzu1BjIz6aY6I1tlqTECO+LrffP7p3M8vZC6KqAbZFunaiSSOD+rESPXwLZ147sAjsBs3YBPadDJglJzOO9JzFXCrG7pOO/RAY/io5eTirAd0wo7nBKVkBaX+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706833697; c=relaxed/simple;
	bh=BQz937o8tH8xI0Na/8iqhFVQ1vBtd8p1eF0zHnT/SKE=;
	h=To:Subject:From:Message-Id:Date; b=RRV5+6vcvyUixjrnK/BvICxwfA3ZmmGqCVVmyP5+paj+fmwOkAm4wD6bAwoRjYNgQBhRdLzRrr9/q5ANSYqSL/7J/49So0TI2kiElTgb7hcqxCw2c4SMnM5PbKjLd07UcRJcgEiYOFILu+7HLVqYrXoFwwdd4oM8lZUL/NCbhCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nt73pKh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nt73pKh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75CD7C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706833696;
	bh=BQz937o8tH8xI0Na/8iqhFVQ1vBtd8p1eF0zHnT/SKE=;
	h=To:Subject:From:Date:From;
	b=nt73pKh6uOCoE6I2hubaETwkl6xISY7S111Fx8X+K/Y4nflDjTBznRFYyz030pnK7
	 dIM+Pjf3iT6to3/g1vfZwuz5QqXNuBPyjBzSRFn9Hd2AWl5ljauqYJC2K/ee5t63cT
	 Pm4yIcla5bcnXntZk5rM5NaL0+R1Sq29NRY0scXuc2X++LuCEboUOIeL9xS7K3Th10
	 kkAnJP+k7yzqrSR23rfoxGAflNU+DXPRhXwNyrBrYvHu2Y99IFDZ66E8JwP9+P8poi
	 I61z2+DXV8LNjP8SMUqpHTMMVgN8mKaRtiLsBcSQTeaLWY5JZD0TPeh2+0p0TYC7z9
	 zsUnhxpJiNp4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6A2C4828D
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170683369636.15047.11282067260656578038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8490a85f7bed6fbcc8465273e14229c79020f55a197a84a25aed598094b38ce
Date: Fri, 02 Feb 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706833696

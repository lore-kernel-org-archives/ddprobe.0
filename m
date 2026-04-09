Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283952D0C97
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775703334; cv=none; b=nIOyOVPpX89LWJlDd/lEv+Muq2tpfbQuMNJRqffxizvQNSq3N5sEey81f/0uhfmOAeQN19cmzE/YHb9NjMr6b6LVFIz3+Ytu07h1KXvCq8kulJD54tI2WbW+S/ttEWSIwxEiHpk3vab5dqbcNT5N4bW7fYJrC/t6U383Crvx+Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775703334; c=relaxed/simple;
	bh=tkqcNea2Lv3Ys0l+8FnLjOAWWi5Va2g2Mgx18uWbKpc=;
	h=To:Subject:From:Message-Id:Date; b=DzYBW5oxEE7ywj/umtTLSNdItumJGujKnH5eP9S1q1c9sOMkVlP7bQY3W5EiqHeg3UgMLO3Zrzvr1wA54Y+QgpnQoxfLvUSqrUzk2XZiuEN9FoeWyQCSOPXsgxmFob02lefVGy3z03sbJLRxSQe8IbuiXHm/nFrTaFKpFfi7j/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXMHczzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXMHczzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39F3C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775703333;
	bh=tkqcNea2Lv3Ys0l+8FnLjOAWWi5Va2g2Mgx18uWbKpc=;
	h=To:Subject:From:Date:From;
	b=SXMHczzYAczkaFit0BvJk3sgLG80cgkqIEZjvZhDDzz4h+2FwEmWTxWATKzuj0jr0
	 45JoebzKYqMvJj4F8Zv0om5PIT7V+J+Qmn6Wd7AyYFBibDRNJUkdb6ANA509AbGA9x
	 x8EdHQSkI/zCwcPsUVhCyAPJrfG04lexraObC3y3HJiTf+nsBlYUlnHPoYXy5rxSFV
	 RtTWJOKxP7Y1jRBcBt7OCmazCMzshmjjWcvN1JXvb9E0c9ZR5neLD16eiFFJYGJEa2
	 g4wkDcJ1JnqEdK+UmIp6DXkbSlKWiU1BBlJG7w2qyyY+7kuyP3E0lJfX6/00/I3nYz
	 2Sj9hxcW0oF9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B107010FC466
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570333369.15983.3682192193512336665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a58cb5e091e45277abae183c50315dcbf908462d76c4c9bb5c3048039702594
Date: Thu, 09 Apr 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775703333

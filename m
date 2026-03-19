Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430823EF0A2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773947694; cv=none; b=J8zLa5Cnlzfei3cmshspvPctT8jiGcv1YjhyHe8L3mOjdecv34feIkyDMYLQL834/GJcpRIFjcwDyr8N0JqmAZY+a6paGx4teRWgC71nk5RIOcAhTEuw10WrmZopZvgTlDmuv3ynZwNkHolGpvygHB0GBUcAS6ZF4sXTqPOfbKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773947694; c=relaxed/simple;
	bh=vxDUApUxUeeOeLY+0cLLkm7wafXjKtx9Oq/oNMPpwd4=;
	h=To:Subject:From:Message-Id:Date; b=gaI4kuKnavpZEjnpIQM4dAUKr4vevMqNqXd7Wa+0bmmuXoBMqN0ZceRw6DU6Kqm2YfIE5SEjK3ABnm4qaGRJGHdlvI5TucpaQ2wGS/jHu9BYHl5I1OnDrjU122v+CQP8mFcihujVWxZc9+2UVz30wTDdAvQsqT++VX4EUW7kTWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVnf0ajB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVnf0ajB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E091C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773947693;
	bh=vxDUApUxUeeOeLY+0cLLkm7wafXjKtx9Oq/oNMPpwd4=;
	h=To:Subject:From:Date:From;
	b=QVnf0ajBrERY7loYQX4DI8wfqxHjI/zJq+f/p9vG7iESKZ1oNEgv8i5IMkWhojnyh
	 1/BMtsErzm+Zsm0kdToeWlHxXgZgjj5NM+vZ9NUlxvyh44bWVMmbd2LEz8K0tpfbXx
	 CD2JmoRzQEsBlEZEfMa8+gOl65iFAvNP7ncI0QbBMltNy6l+c+9QAdPS3O67VV9h/6
	 QRKuDWFY3FBKRgiTYbs/SEf/EheK6XxUJWt8F+Y48jlVIkRTqqGp2AwSc0nd6XkY+A
	 P0puWu2BDy88ELQriHVnRpAJo/BQrS5YrIcfTTAd2oohuE3N8WuHVG5Sj5qzfng7S1
	 /onbIoJCtJRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4681091910
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394769357.9660.16403087847987473229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f814c90afce51d64ce765e311a33f65cdfd65eed65b94bf76d843a598f4942
Date: Thu, 19 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773947693

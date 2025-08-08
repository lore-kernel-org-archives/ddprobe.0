Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B6A2264AD
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754685594; cv=none; b=G+B+AJcjFwnP7EK6fAIbnTb9ymRJiRpfU6t1O4QClEwWf3ZDQ7lpvPy6UWPbcmgJgAzWKNDVcfB7J9cW7YjFNVVF1lkqPFGlBkAZdd/JA7rVU8aLg2r7kZKeTkIDe+Mnmu6LzhyahkKbwzN5bJ40JIvu6jqCppzzhrDTuuT2JXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754685594; c=relaxed/simple;
	bh=EBx/RDIgBKsmAY51rEuGbxg4WOtllxe1QlG3CwClfU8=;
	h=To:Subject:From:Message-Id:Date; b=nwNZ89cUPfKfO1Vwcop4G/JWpTFgF+zYwFalhCFo/ZV1Cz/4ao8IsqPLEoklcOZJ6Be+as/ueCQfE3b7uSjOo5b8bdzY3Gh6uw/vZzFuJFs/ord6FO8qI0uSxNd2kFTNi62FNyvllJmhm9o1MH5d7l8oUwuCfDTbfr8JjEJEPKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMEZsvyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMEZsvyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C7C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754685593;
	bh=EBx/RDIgBKsmAY51rEuGbxg4WOtllxe1QlG3CwClfU8=;
	h=To:Subject:From:Date:From;
	b=oMEZsvyiEsOLfD9FJIdAyE9n5zy6KGtMvwqZPGCLBTMsfBVlPpOcn830CHJ5K8pde
	 VvbO7PgyC3ZzPWBz10p5updmQIAMhZ4ObTRx9Gp14vNoqEsDCnmIkOZ92kPMLhej69
	 BQg9nSSUru/8BVbTEMpGeezDF6lUdWRaG3BG/iNJis67R0cMVppb4k7lM/8PSK6QAj
	 4Pmg/4TWlSyApJhmyItVmzKbtJHC2hmUl6TrHZo6nxlqxJRf4q5kRXh1h4F9k22Jft
	 qbVavHmqKwHzbCAsa/35d5qMy83L+Ht+pAZqUejsA5RAhj7QjR27sjBJE94il+LP1c
	 +kqUxqriSgU+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D8C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468559359.7986.16079900035933542871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f93f58a6887c781ba7df33e7d40bb3b36a25738269e7f9bb40105431028531
Date: Fri, 08 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754685593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA281487DF
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717512383; cv=none; b=g3e3ycSolfQfqCPyFOvQrNwoHIErG25Yu6Mrw7uZXvSC1up8GhY7NocLvKzfeVxG98r1+xUuSi3n0UJE6tm64Nc6sTQTpNOpJks8BNe9EAftC77GuLEz5jMSb1MQsRG7EeoU2MA4Jo1QQvtGJ5cT6lu7zz+9TaQnSCYkxNMz7V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717512383; c=relaxed/simple;
	bh=ekrAnVONf64MMLj3VSjTP6EPNHAldN69WK6BtdQ4QA4=;
	h=To:Subject:From:Message-Id:Date; b=uGdNwmF96HmOqMnHbOLqQzQpL7Im9/BCySW5elFJhLTceq5I0Y7F+iiWY4oqt/simR9mrxqUFNdKVCGBoI5VSu3bnEjCAL1Ce5KeF/vV76ghm8f0zdmqkQPNsWIc/crObUc/Bf73JBPUF4+Yo/exc1m3EzhhJzSkbHBEa5bkQzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyYPeJti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyYPeJti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD82C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717512382;
	bh=ekrAnVONf64MMLj3VSjTP6EPNHAldN69WK6BtdQ4QA4=;
	h=To:Subject:From:Date:From;
	b=oyYPeJtiZ4TtwaZj6P/W4xn6YW1GcSYZHGvtol3iwY9FBK/50vb6kUuin/hvxntbW
	 s/TqzoI+66a3BpU6/BrvkDwz/kVz7SuM1QxJDpoj3W03RTgnEvcIzi4N4GmTYlfFu5
	 gqLwJDBJnABu3JXX6omsBSk82ajmqXXiYun8ah4ELEw20h6Kylk0C7NS7bZkjAicHW
	 OU6SBTVD9X2oDqRRFnYV68aopTOL7VMr6NNXiLqK/OtoY3h+glepLb3RhjMIIeMAEi
	 WcuoXAX8bG+p5+8Dv8Zolhk2Vr/JoHUSN7RQbVh3BjnaXjPfz822MHvR3EUJ6CIwId
	 h+HudlFMjPrXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AFAC27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751238279.6664.17333400604829040240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bffbc1445efc57752248c715c38f29dd02c1d09dab9c798f1a553e1d3f465b2
Date: Tue, 04 Jun 2024 14:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717512382

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFC8366DD6
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773816894; cv=none; b=FR8DfnV/UwCg1cTlzeoPNLPsiLHb/SXqr1hBLbpdg364SZI7DhnkY4e/FzxrTe4bdYx82hmUh09MORtKDg4n/0CqNy27fznmhkpQAzHJZHpGpQsqIfFFD22Aqe0dJ6+nkn279x8gWEEDlaneZPatRQewCqlOoo6b+bqp+GNnoVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773816894; c=relaxed/simple;
	bh=L8LcSsz6wGnrDhcSCkNdlA54+E6IaLT+OYTeMRdUNUo=;
	h=To:Subject:From:Message-Id:Date; b=Pta3VbkdWJvb/WSvauN64sR1Y4jYoPTmSWny/yYdEp8VQEvllrL6STynF0x6j3+Muzn1USjOhDi/Wlg+J+659gwxaZDkk1deBvhhbxrVpIx72abEsthgb6rpp+pX4l5R8EoQ+r85ekzITENy8lzNvS5l6uGj0KXolodHQWLzQ1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqnbYzKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqnbYzKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F52C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773816893;
	bh=L8LcSsz6wGnrDhcSCkNdlA54+E6IaLT+OYTeMRdUNUo=;
	h=To:Subject:From:Date:From;
	b=QqnbYzKPnfcpcSQ5eOWDUcdbH8gfcagJxZGHwE9kXoFyR3YkIAClUJuSHbVQ6L1s5
	 twxYQL8xTBkbd1YOYfoiifKG0UDhPrbanDGvqBqqXWMKjcRNFRnE7Z3Pw0o3oj/kJ6
	 xY76U8kOoAmdJVMoj79x+h+WFM/YzFaSkocHkezj9vCibxVUvXlp5SdCSeqmy54/0/
	 slG+k8pgbF7XghjBJAErQyP4p+zBWe3uAXfoFvrJPekuwgUTJVr8Z/NXN71X6sQ8bf
	 lFglpZGr0qmx1X9dIaIC6zXQELE7gbcFiRpPFIsamFv87VEq7iqardG3D5vML/kSQa
	 kKBstEGu2kOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9544AFCD0C3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381689358.30509.14526664191299313794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d9dc25c2957c15a7843b6bb83ec7ede6c3652c8f437cce51e1adb6d5c2a62b
Date: Wed, 18 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773816893

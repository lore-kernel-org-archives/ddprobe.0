Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EAFC2C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707905897; cv=none; b=rqisB0Aqr0AtH7VuaroqcF5+oWQu/uGXQDtTUL67F9ACbTdrNR67EtxWnj6yB51H40HL3PHYGgCz2qejfRkFuXujDNLU40RRFg4VBnlcsITCcBDmkWZfjwJc6ghngL0SyEou9aOfubwwpcFzFGCAmy14w755b9XyGPndyep9Xlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707905897; c=relaxed/simple;
	bh=Ygl4by+vfHqtV1CXd665oVd2EToJd0r0oec5oMeJWrM=;
	h=To:Subject:From:Message-Id:Date; b=KY0mLxUYMHJOOjlctpJWPW0t7giV5PEzL27v4KQ+yz78Ic+ASZlpxQuKAW0P8hOhy9prVhEAdx/kK8hz0mQ2Ug+3IPsD/xCiQ2MhB4ci8n/QwkxaSUmJRLi1ANBbDVZBt2sJa1XRhB4tS2I1AuqH5pAL/vR0FBMZn1ta/JqRrjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxRu6f/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxRu6f/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C0AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707905896;
	bh=Ygl4by+vfHqtV1CXd665oVd2EToJd0r0oec5oMeJWrM=;
	h=To:Subject:From:Date:From;
	b=qxRu6f/CnDLywqSquN6ZER5OOi5RR4nsbdYSNAfstWe/zhXKJUVFDbq4ZuRzLqMJa
	 cUtlu3Rer12iBusFx4iyQDfqmbhlz+q55Lf9ICUa80gChJHKakKVOkZEcSMIBVa6+E
	 2/s2Gm7VrjS05amSyfA2eJ0a0Dd9sMi0s1vZQ6ueFM83gd4RwPacY3rtLSpsxD/C/A
	 ZuJQi3fpAUNVoqy68htxscoapi86Y5XacszUBpnzOLev6EnRhkRUVkUuNF+gvzZuZn
	 InNEKq/NvvHTPKu2C43CwU3AkuvdxbM29jSiQhH58AuqsC0xzPaRs7Uh3UT2s4oBJg
	 U3NMY7zCaND0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E794C48BC4
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170790589638.18022.11407603901318333133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8069e8ed052b9845f5c17b70ebe038df86be18669ecad975b54ef13dea5456
Date: Wed, 14 Feb 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707905896

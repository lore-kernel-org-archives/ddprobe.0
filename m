Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBBB2DAFC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764360174; cv=none; b=q8m9w8Bc2PcE1UK6v4ECvHmWRYUfkP7y2lT9OpJ853MMf78ULZhGhGDHPghPH8Gqfo8ZllGZ6DjEMdLJlDgQd55zfP3Pts6ACOTUCVvdrM5gWzrDJQByejBJ3WeC3UbMHLw7Dh0zIx01o9aw5yvraQAMnAtXWuokkvHuf786bOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764360174; c=relaxed/simple;
	bh=LUbdRdh/Ey79nzmN3Jsms2fDo/EjcyzJbPDEzYlxszM=;
	h=To:Subject:From:Message-Id:Date; b=dkxza7lO86Pxsjuriv5DjDqkvomW2ad4OCfmAH1UY6ZNQciTZpwemP+wTbFw61IDiOkInnvtbQjp/iurlJwxmdvMbAEhaYPhnNN5K1dhQZGc0l49yHBwKu1eseT3hfzR8Wfc2SMexDy+sC3Ii2odel35Hb62wcxpHZwh4HuTXfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EusYxr7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EusYxr7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83DDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764360173;
	bh=LUbdRdh/Ey79nzmN3Jsms2fDo/EjcyzJbPDEzYlxszM=;
	h=To:Subject:From:Date:From;
	b=EusYxr7+RXXIb35npxVJt4ZoQ/YwUml0BkWVTRC4V4CqwnvHncOj+7/k9fRZS2oQh
	 6LP9U4p7QmVqA0wI6pH/8/EkS/Kk0pduo+dSK5oPYxKVJS/zuXrkIuo+4YXj8LILyp
	 BWB2L0GwdrPwtIMQp6/2HQczK1Cu72fu/WpM6vcrD+67I9JSre3y8XkyUl1YcZwq+G
	 wA7EvCetl0f/WvEGamqv0bZrz9xvJrAbSTOyUTDO+yJdw8utDR8rUJc7lDgAXeE/eZ
	 FQzA1H/Oger1YdznzBr4ftQ7St0kuD8pZrHZMIOc5XY+2Ay39Cv/PqLQnJ4XbexJRg
	 RiiT/oa1vXOcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A96D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436017360.17363.12228524850592849263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4038b762afa6dc0a8626935a7bc42be1b8a705ddba786c34e62e0fefd6a198b5
Date: Fri, 28 Nov 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764360173

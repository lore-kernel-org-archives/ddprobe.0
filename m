Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A0912D744
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711551496; cv=none; b=QA97aRfMKcDdK2ZnSmDOUreJF7WMy99xSCtrMuA7VZt+i8Z418AX1v3RfLgwKB5slTzAaHMEKfMPQm5M058YZZbE8ebVFYxnzwWRpIz4QuNkM534sWvTWx+iBO9D2iVMolUR2Ew0zASqKciKudFgYup3BNBMiEN4KLrCOIxlxHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711551496; c=relaxed/simple;
	bh=MPPbRXMceOnzNr5HZtozGOhORLaLCfQF+9D1Ed/RBe4=;
	h=To:Subject:From:Message-Id:Date; b=N2iY8ePNEBTFSCgddjijQXQt1ZVillyog5HsWpmSYe+PNdKRt/8cPzkSCd4FdoScJ/nGB9DJHmCgL1lThuLuXTnU9Yl1lLnAg/3oAYIu/lMTdwmrOo4B42xi1r7qs17LRxRR+ty4frbOtE3qPDBG+JCk38GQNdrZGA3jdUjfZCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uo/HXpOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uo/HXpOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74907C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711551496;
	bh=MPPbRXMceOnzNr5HZtozGOhORLaLCfQF+9D1Ed/RBe4=;
	h=To:Subject:From:Date:From;
	b=uo/HXpOjtDzVO8Fkldl994wPuY/tIudtwBN3JY1mHicfFGDKmkzGUIWkn++CGIyQx
	 bsxmSIESESTB9JaZe5/jYh3ufOAMIFcuvRf6LtqQ83t5YQGQJNHJnjxb2Erg40M2G9
	 o/cgjxrqS4QZlb3LOrNYFs20/d1y8RdGIAFH8YwzZvnz2Q5DdbVo1xXTF0ys2/Hl8I
	 p2el68DRrFxjzBL2mSAOXRL9ByQ+ieRzNQubmmqAEFisl6RUgtbL5hpljHjsxwIEMx
	 R1gFs4OvuhMLIaLq5Ch88Yhz8P5iGo5papg3qqYrwe+sd9d//iE5hqd6H9+bHZgxnQ
	 fzdxFsjI9T7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668DFC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171155149641.9253.767677351712360256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba9f0ce6b5eaeb21ccd6e483b77f37a47bfda9b9dc2b5d568042acf321b6d73
Date: Wed, 27 Mar 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711551496

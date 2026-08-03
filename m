Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513AA3939BF
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785739834; cv=none; b=fJdohU42XaTqaf2OGnRN9irO/qbTe2UsW9rrQu9u7BcTr/aCB8zK+/FNcOmJiX88Suf/JGTWQGOHgo60Mc8MFxlNNwIHDvP7Ue20cQw2o40MxrYJd5N/nGR58V+5kqyyqoK0F2ceEf/n5gBV0couHxntpWXbT+DzZ1Ias0nZcR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785739834; c=relaxed/simple;
	bh=CrvneqykTeUy6kBPL9BK8xi+9shNOdWUD25Z2YDZPdU=;
	h=To:Subject:From:Message-Id:Date; b=i2b2PKaMyX3hGxbcJlO/a0PVF/qprIKHOCEL0eSu0pIZnPdRk2mD8hpSQqWxPHtuFJ5eYrAtlqjl/hk6TSPI5OVDR9+e4Wh2mpo2Ma9xHDUGrF2tXojwsKC6n9nyRTXS0v5oSa1OjfAFRPn/p9o1AwwZtGUN3b3rVnEIQQr1aVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfezmQQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfezmQQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC49C2BCF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785739833;
	bh=CrvneqykTeUy6kBPL9BK8xi+9shNOdWUD25Z2YDZPdU=;
	h=To:Subject:From:Date:From;
	b=NfezmQQXQZxJJ+X+CfbZ6a/OEtBSM9DvPMOB9AtbfrZrD8rvdVBOf1RhvyUY2yF9r
	 7T7xIrGHlwiE7+IJ+VfkHnVOQDTycjNdB6kcMkYdQMfdK+vd64GVEFC2gqDX+w67PA
	 jJZUOUsK2YpMfVSphvlX0nmE1v/jrIhSU8Scv6aywonKEByuQ1+4JOLJt6S8h6Ykj6
	 U/QfC1Aa0LgXi1U8Z32t+BdiElf7AhsfU/Yn6LTdtoR5WoxzLlalh9yo0YyWOXAqPn
	 laHVe2+ukDzRoOVk2H6PTRQEM5VDzbosxOu4f2IASaZmZEpUw7qZoFR/vUZKPNoEry
	 /7ppyjsCbWwlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2D9C55175
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573983368.23365.1685545678551064950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3a3da021867697ee4265868352c0dc8fb09c5e89d259b6be08c98681255209
Date: Mon, 03 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785739833

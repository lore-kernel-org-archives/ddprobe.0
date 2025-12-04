Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BD6398F80
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764831774; cv=none; b=el2dIPs9YrcQGdm2+wkC1XsgT1lKKrzEf3knfv9jdjJ4GA+E2a4dC9IiJ0ZV16PEewIKWHhj8WDXFzy7VGl/87rRGFYiZqTWjUYsV5MeG5FZ/ZwYsUx26YMnoqJTs2gBp/IkRYVmLjqmS1Gc6/xnkPtVSu4tES+tjuNef4CnNUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764831774; c=relaxed/simple;
	bh=cy6ez1cFbSjNhWl1VVFnkTMnviNXGTsAx/A09u/J9gI=;
	h=To:Subject:From:Message-Id:Date; b=Ksmk+lqFzIdYLa3AH39SOJsxp7vqccl/m0YRmG7n32lNU6PMZyJi8yzR3t/A0H0X7bXygEGNKclkTZphecd1DTz4NxBR90mLfuU13JImxbjSfeEZxWjU3S+Wb8tc107drCw4tTS8aRyoI7GHP3gOPFSbbfRQUBzGf+zp0GF+sbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fU6NVNXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fU6NVNXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6014C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764831773;
	bh=cy6ez1cFbSjNhWl1VVFnkTMnviNXGTsAx/A09u/J9gI=;
	h=To:Subject:From:Date:From;
	b=fU6NVNXfqiMJWWbfyjIXSQHAaIK5+EUiDlj5uyysB5NPJlsZ+UiBAOaYVvaiJnXoX
	 fobxk2NLcVn2DdjxcZ1CnMjpBkakKr/gngS+tPKueXpPBI7rx0JwaKb99yV2+4JUeE
	 kMxCOd+AZc8Bb9Z7bCG+eLF7me+eXptBlK1QHKsCTxAUyN3hDsaf79YdnRmv2MKjYr
	 vsYQpmuuQb2Ah1KvAQ4hrZstk0CO0YtvaOZNRp6camu2CfLHBei0VEr/WEkvtbEVNx
	 SfsskFS1xadQ5/BMbPtIJWVkBiMhmeWFyhCBT08j0EsIaF91TbE3NJ430d02yHGZec
	 Xd6rFSd6X3+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C090D1D87C
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483177361.14320.12684963697825988630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4c255b0ba29e969d149399cbdca7e82e752375166621e568468ad8052075c3
Date: Thu, 04 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764831773

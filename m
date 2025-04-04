Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542CB3D984
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743792594; cv=none; b=XARA8MIaTxiP5xhsweXDP8a0pg9iDYEh400uv80yocDe0Gnf6OwmktTEKmONfuGmNsjGfzu7usj3bqZJgfie5KDTNZNCmWbB4ykv7shrV8umnOmHxvgIQbRrMqQZ7ZbVFaaQeFeIEV79L1rh1tkzBpmIsygajE5HS85dlfE6UJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743792594; c=relaxed/simple;
	bh=HwkvV1hOmTY8u+In6RrfJ2zJGGCAMFiKAc4WVhvzmmM=;
	h=To:Subject:From:Message-Id:Date; b=OANdFPRhtLknbJnujbDFBnB/rxN5zv3wnJswEFAu+v01fgFYd4NGIAlm8gsmoaioCj5qaq1A1BzHLxOSSNKQB8Zicnl4C4RVoU4um6gW3S6bHq0B9jqQmLmTV4BmDiz7dum+CIj5GC3mXOHYT7J3XWLC58OMeh1/wILREHNf4Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpvuyc0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpvuyc0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2956C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743792593;
	bh=HwkvV1hOmTY8u+In6RrfJ2zJGGCAMFiKAc4WVhvzmmM=;
	h=To:Subject:From:Date:From;
	b=jpvuyc0WuJwGyM+7W+TSuGWyq2gyTbxF1MpsLpjrw90BlOuyW8YZZQrms5YIOS19y
	 OvUDwCTu4Vne+2noSCOnRgKZIpvdTkyxI0Wi59G1noBgePzm9mqqMcRIIviUlX25QX
	 ooFkozpuFp3yKepDXvqKTA8JiVjM47KKokAvor4FpgdZVS0JMa/hzn9T/HzgkLv3kZ
	 dFE9KIrnSgkxUsnTFIr/QcmMfa5ZgR235WkrZoCM4xRVzZLDqJRTKyxOo3upst5PuO
	 uWAd+w3Oy7fvPPESBAIR72+mDN/BKQlwBICAvq71baSai3Ng1ZwpSsaNaKLVNE5ZbG
	 RxmuK8FOgLfcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABC5C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379259362.27207.3187264441309738699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77e41ec9f1ebcf20526f014c35a98bdee72d4939c0d8ed5554ebaf93b9dc9a2
Date: Fri, 04 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743792593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8D2238D3B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743598794; cv=none; b=DN0tyTwfhdyjrsGQBLZ/NHxGdnXFSgUUYmfQ12xQfZOzgZxxK/B149mPD2DHrcBCwEcCj81LettuQaMrK0yU9b0cGdAoP0Qob1d8O+GX/+5UPZ38aeOw4I8OdBo+KVHNEkXpWgXm6/nxmpLcatakeIH9Qj3M89w0k8lJaPk/fo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743598794; c=relaxed/simple;
	bh=Vfp2Aey0ckOWctJzWBJ9iu4+NH4psOkXIvb/87RfD5M=;
	h=To:Subject:From:Message-Id:Date; b=rI2kDe8PcWim8QZN4Cyd9G/S+c03brnrA5WMKUpUqo8usKCEHKa/xWMGr/RuZbQjEls39rZ8DgB4M2D7rQqzvTxhnEkzz0m6Fu354DOEEyUrHrPTopCMsRcVzx/btJHQoUe40PwKmrAhbjT+zfCt2oEUiN1NPKh+iyNonAHuArQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzYIHMJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzYIHMJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C8C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743598793;
	bh=Vfp2Aey0ckOWctJzWBJ9iu4+NH4psOkXIvb/87RfD5M=;
	h=To:Subject:From:Date:From;
	b=UzYIHMJ9cxI81cB04jg/i7hqLCnhJO0BaK0RWtYGWbannzRXI++8Xi5g9MU+huuzB
	 DT8FsiSL4m9J9/Q1YSFvioZL5VyUrUE/6dHmhrNWRDoKVzmoM+Wt28l0dVPn0fglxy
	 ns0jb5RZCD9c2+NxNx7BJNT5r9Ecu58cicQaTX+Z80lekUYL28z717NTYlXE2bBdov
	 vQs4xucXOeqX5SQgXsTBtTvxATEMrZvaUsERY2nDxfJd8TNCql1ZcH0UZRYC6CKXPb
	 c5GkwPwhjljS/zHwANag5JiZD9/E4rcLGfXFRexpKf/Vv2ixo1wGXZJ5ruz1Iy7IRD
	 Yxa+tId8kmTtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111CC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359879358.4850.738069572165746338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94311defb703055a949d1d053a76b24c1959be6700ffd64437b3e0fc5ff2c34
Date: Wed, 02 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743598793

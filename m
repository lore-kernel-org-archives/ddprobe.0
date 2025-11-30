Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203813B2A0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764467574; cv=none; b=sPDlmzFN2aXPWcB0yfbnZouJ7qGnnRZ+FwzY2f+ycItdX30iy4W3wVOcJ5FGk79kE+DJ7aPk/cVSI41aGrYYLt3RUpw25qB7Idkm0EEhph5EdS/06ow2mdhToLKJmKsr+yMkQ5Ic3Q4MK0xgUI9O5AXGSc/HJArNwWvnoHbCD2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764467574; c=relaxed/simple;
	bh=yzVLAc+Y7S0+HRSMp9l3nKA9841OxOAFNhnwk/901/4=;
	h=To:Subject:From:Message-Id:Date; b=nIddev4rcslW9184ILfgfXAvuH1qSjJLQwGblgXlXa3PY7hLXVXAZK7bSAXtkVXc3UiirxbBMwkiOz/uoFwFvjnazvjiXeYnvIAeTpQt7puB0W9jgIyJf9qgT7kV6mndvTFak7a5qUW/qhAfhJUgXbkePKrGWYgOrqjr2hZMlxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD9/+UE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD9/+UE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764467573;
	bh=yzVLAc+Y7S0+HRSMp9l3nKA9841OxOAFNhnwk/901/4=;
	h=To:Subject:From:Date:From;
	b=PD9/+UE3qN7ka3N9kNGUAsTyXEH/gbm61MLaL4xW3tOjcpCceNNTxoD/tM8MxSlX4
	 0gC+xgSZaJj57H1DGQu7vWgsGiVijifLwoshtjKWxmokyB6E0NLBgrJ41cxMRUltW6
	 SZAvcX5Wd0YL+C7p1Oueg5h2gSh6DOrGuRCCEjjXXGklpzBQuEvfnxk3C6+EAII3jE
	 WeNdK0EDl4Iy9f2EzRQ7BErDJju3thXifI944Xj3P5lbqWW29KDyrSPkumX9Gkajl1
	 iP0+6UTgmE/5/nHCmr2/qLj0aLTLkEtPfOerxRiF/rCl66q2jczotC7ZI8azwWZ6YI
	 FjR5vdekr0Ahw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9374CCFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446757358.7072.16239231704633052838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bfe1172bea3165f442fe7e58c151bff04d5c0e90e89f6a4d499dc71057be5a3
Date: Sun, 30 Nov 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764467573

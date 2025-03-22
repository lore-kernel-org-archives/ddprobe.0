Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559498BF8
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742675994; cv=none; b=ZGOXlU3KvQBM6zrGPmwRVqXu9+D93+cZZJ5P6FPFpa594LLBKKgakjTjGQDSAKYwg3jjkmbU3HmoPEcx+ms6YdxEebZ2O0UEQeXOVUz+xJ1ymwOvO+Af4R/JA9KTFWtoHEI1Eqy9aVFq1Tj9YxOw4d6uDGhhvF4SMqeUC3sGtKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742675994; c=relaxed/simple;
	bh=FsRgTGvDdYGZpBvjkruiqtFfKj4rv6TPyiqeJVZ1YkY=;
	h=To:Subject:From:Message-Id:Date; b=X9gCApN6fV31SsLem80YoYDBrpWJ5m1KXEa4gXd0T0LpqI9doLGueGPJV0RnbAQx782EJADtvaGx0Rv88iGsAN0gtsAiEhS3rS/615BOJqoMuS8Ujell610HSJBNdQSk/I3pFX7S0vJPOCDIspQwFnEQ17TdQBVGABin0rw55+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3gecTFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3gecTFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF704C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742675993;
	bh=FsRgTGvDdYGZpBvjkruiqtFfKj4rv6TPyiqeJVZ1YkY=;
	h=To:Subject:From:Date:From;
	b=C3gecTFXQCEax7/HaFimwqzew6xQmEbT+3rebpFEsH+IUR5aTWonh9H1CMQugE/R6
	 iEJVHB9+AUEmtwU1DGRfgIpsaYws68YgR8aUkmfiGdZztumaQrUwjEhZQLBB35nbLp
	 1IZEYYGSKUzSiYRP6/bTrU10jYqUAF0lZmde2YltxRPCtbQIFM1ldHu/GBrZh6dWkc
	 iTIZa2j7xfqcgO7QHmXG5Sfcw8GuRj0QUhtCbDHIbGAcb/OhvcRbvIEtOKBDw04r/V
	 Dx0drDkW1KXpolKt8AJ1SAouHf5ebKlM9jAQjg9EcVoQqLE2V5kRJ+n9lRWwuDJ9Oq
	 o9NjuOkGANpNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7FBC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267599362.14562.7203953288743976056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e113addf152ceff1ebb382f066bd93a032bdfc63966e5940376c56a56b6a1dc
Date: Sat, 22 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742675993

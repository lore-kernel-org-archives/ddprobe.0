Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76E12F2E
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75322C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661526652;
	bh=5r+/sGd6kWYHn1RxTM+BmapWs1esOGsO6Ctmh9zaM0s=;
	h=To:Subject:From:Date:From;
	b=J5IFn1RFhHKzys1P/ivG4C/Bctm+8mzaGsS1DwcOwLeI2/zRzU1d/TocQ7Kk8wXqr
	 KSiRLmfLBt5+FEtldUs62rRG/cGh5uUP+wJqSr4xMgQ8xVUuIQoxJr0jov3PxtlAGI
	 uP+UXkvtiao0m9W8LTO2caKDz4J+9c9yULtKiaC/rQ30IVMEvS3WqcXt2hM0mhkk6o
	 WUcNHnCh7FPgBtf8VjvJzr+XGy/XEI1Mr5Nr7l+CCz7PFg3HPdlYUh/cXP/6/Pa6cj
	 jBh07sylYWLlfkugQRR3l31LqnJMUUwrZHOlFhhK51xVgxVe/9RfCea7OBb32GChWj
	 C5YwzZ1ScZ7GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AAF7ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152665236.19255.16690533735079725744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b63c004df094a9e0ac2b4f14b9e42372b14196a0d718046455f91786d579b4
Date: Fri, 26 Aug 2022 15:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661526652

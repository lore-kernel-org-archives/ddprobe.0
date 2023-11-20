Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204D415B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D34qP7Uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E282C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700440696;
	bh=2x1IrNiTJeN/rkMfZ4r99CtIN9x6s3kdrnFmv1yPzEA=;
	h=To:Subject:From:Date:From;
	b=D34qP7UzjFdU3LRObfi6G3E4pWbKh4xdzQ8Qc1EMbFYwfuh54L73C5/p5hFhOzld2
	 equ30BdCOD9BMcULSZ4l6BbMZw7GLlMbi5uvtbWEZVrec4b3XIfmWzvq8e5N4EwwLT
	 ZQfE3GXvU4Yuji6F6klfNAQg2Qyl7BfWGYjqwvFz2iedimirx+YrolaWo37NTXo9Vo
	 YopaI2z3pya7Vxt0ErRHRz2R5PUsp6riKXrWkOeIFfkcsNmaK9BgYxUW2y85vhW6Go
	 LVQEb4qDWaVoLruqnqgB+Wi4j/pXHkoBKRPClwPI+q3Zx86c4gm750m5y07qDDsobI
	 9wp2NWbf8UpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71AE7C072A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170044069643.22748.5593065090022352051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4d61f8f9bb8ba1f33805c942177bc838b68c73d0e7a90c8f0e4213b9deee07
Date: Mon, 20 Nov 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700440696

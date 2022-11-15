Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E342B28ED
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 919A0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668506454;
	bh=hQVavF3Ln7VUaAM0c//TxYL/JvxscM+004yWlKkM2IM=;
	h=To:Subject:From:Date:From;
	b=YkC/OfX5iTWapXhl0rL7Y60HaKlPh30okZRQPrsnMejRwnwAADpjnZ6kQCbCvaDqP
	 sWABy/vRT/bm3fM3PpgIbdMucwtjAQT9O7b5/2+6HSo+Le3gOp5lHIvjNBnHa90kc8
	 OfF4HpWoFDEUPokp4zGVLxfVhbIh/T2usG3JxZ8IaRPhM+SGEExIQfPU/HXjCWhFd4
	 hkCB4aSBD5S+E3AgjOaD1rrkjnrxrt7VS9U+a3KJf3BlmQHAESpfS1ufwRxb94I8lI
	 te5/APqAdAuQmabo7kE6C+8DVXlaDlsIrW81w6kgZBufzYCaNaQLZ/x/G9+gfISSiH
	 R7ayeva8GglEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E63BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850645442.21066.7815337064483769351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8d277a0bd930c3dfb7f468166e957fd4ca783bda2e6a0ef4f64a7fab534a05
Date: Tue, 15 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668506454

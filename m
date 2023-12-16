Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110F613AEC
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAcRCxpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800A5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702717096;
	bh=PUTowQPUkWY2z+oUb+89KcsCdpDPmse5JuruZfsulqA=;
	h=To:Subject:From:Date:From;
	b=QAcRCxpcjI423N7iHT40VmYREMUYbUAvPlw6eN/tfKBNmKQmlJqNbGQPzodSHVPUV
	 1TPK+j8tbK1IKW75s5XDjCdJFM/PsmWL4wCKemdQRMn6uvyAA0lxnOKv2TIeC/06WE
	 AvH7UDMjr36jbMJXFVTdSgoiHG5uEsquSN3WGbMMEJDJFEqQZP44LKu58+DhYIMe/V
	 kjvdrY+RjFh67H2bKZrBpiJfE6Py6WS7XhcKtCyr2x1Q+cgqjEqMBqXkuIM+EZKTWG
	 t9O0sqot2Mtj4o4nCgrAAXMfgqg9W+62fh0pZNeD4V34XsvHxBKKuSKz3odnJQOUBG
	 W3QcQG71QkqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F795C38147
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170271709638.3594.8980586834358842362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68e8336388ca9cc798c5a928a266ec0101233d80f954d94b45739c77e780d43
Date: Sat, 16 Dec 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702717096

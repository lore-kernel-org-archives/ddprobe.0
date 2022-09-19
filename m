Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6B0A31
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7C6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663628453;
	bh=Jnr5j8NcPomtEeGUWcQ++2Kq17ulZPNApo7SrXN0shg=;
	h=To:Subject:From:Date:From;
	b=uk4zsFPQ6F9xzq70J1QbNSUmvKQEqKGaTwsQfdIXk8+9h4nYiMZXUL7pJcGrQaapV
	 dzZ6Rteu33xMtj0//f24muz4pmsJDzvzwBaqhrKWty9U38TtImdysU6oAonkUwIugw
	 TITOvma1zoYYe/UE8k0RofRGxvYlbOuH6lfAKZ4eIhKlsn93uR6MoxzLAMQRTBlbY3
	 DDPU7m94VsmB7UIYhNT3qC6cEBNaCpj/CkV08fOuIB/CGzkly+2k7bsv6h8odmV+N9
	 KaZZnNktPzPbTXsk7xBcq8262iWA7X9mdiLa5IkhG6BjvLQ77atCDBosk5+xOO/2mP
	 Nx4JZeWq51N6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5346DC6FA8B
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362845332.15398.302145548538401453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bd45c7882d0faa1f6a4110c08304b6c177bb1d602ca01cea1a44b6cdb7b6f4
Date: Mon, 19 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663628453

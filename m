Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55702801
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717604843; cv=none; b=QZbEBg1uX/UeyDa78x3AtJf0SUkosBkn5aJ4oAw9rkxa/5TRGS+9oD/LrDvrTC5xz5FXANuP2A4604q5rP2g95fjTdMTfta/YDbBLmQ+bq69GMJZKyDXjoA6Ug0QBGPxI1LoC93TdNjwt8+QWTOVoCYCIzd/DllWmAauu6k+hAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717604843; c=relaxed/simple;
	bh=uruHUg80roJszY99/WvRerbxwAfHg8L/leumLQ65DFU=;
	h=To:Subject:From:Message-Id:Date; b=otUerZnWmirwkQpjC5D7zFZjba4gpHt+vHVvwW4Pf/jmOaZEb/keimC/Y8M8dQOgy0XjpChg8cqAVzp/u/xzX4QIIhr6nyliB6cPW/rTBQGBY4Z31I5nZJaazwzq1hP/gCt16/DStt6UXOGu1G+V+jdC6P32JbQRny5ySO6q8bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jdr+d9Mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jdr+d9Mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD81C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717604842;
	bh=uruHUg80roJszY99/WvRerbxwAfHg8L/leumLQ65DFU=;
	h=To:Subject:From:Date:From;
	b=Jdr+d9MqDfgO6vfiTXcVVJ9bCtD/zcNRq/VXNfFI7Vnu3o2g4104YR3KzdyqHPEDg
	 yUzbHEpHEeS9HOGIBpk3qDNb5cfRUI3ol5IvFPIscGG/+M6YtyG1g8zsptyr7WhHUF
	 PLG610mxfBP6Aoiuvy5r9sUtCfinz6e8OF9lceXWXXf7nk1ZdTdvLU6NpCYgn0Bki+
	 KE2XgFvopnlbppteY1IytuuANqXWTP8d1AjvbCHEYPRX4DeYN3sn+SZdSH6qmmcuRg
	 Ji/GtEQ+HqCeFKVmPbN0ygAioc37fpAT1j1cpC0oUf7k6HjdyWQ6k5yLI40/Smxqup
	 Yv+uuiDkpgNlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCF2C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760484276.16241.3337207581111975680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446d0a64e5c86edd5941c0e06b6cca41a6d2c28769e40035ebe11d3b3706f65e
Date: Wed, 05 Jun 2024 16:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717604842

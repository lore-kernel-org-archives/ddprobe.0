Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81581FB2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7124AC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670046054;
	bh=fCn69kVlwbLW5LKknyN4leAHwOwAP7Kx6TrNtLa1cBc=;
	h=To:Subject:From:Date:From;
	b=V9lvxtONlNi2lGjLfKUAcJHOISbd1/ENsrTj7GNRu9xNrDzKqoRbG+SuItQ+S+sff
	 4XXn5RqLsN3NN7GF0WPxgEBGXBZV7xpVOlokwS6rVgdPvd2e/ZDPKooDQzZapHFbTg
	 mfofbSpO9VHXiBiUWEyH/3RujhSQxShmzUSMdO97LBWfgFDDzhBh0bHnxEe/tde9Ka
	 64Oy6DJe8tD+NPoogxPSjsIPFtZecqRBbG5g0KUQKQsrBF4tmgQPz4PmYTS5CU9QRu
	 AaHlPX11pr6LTWmrvX4a0Te+KN/OHPKyK7pGTHRncjqbKL6NDSjhtNQ0MfgFiV5JNx
	 EWnsmJu2FkRJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EA9C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004605432.7114.6867311953839034841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da444fd0970d1541b5f4f6e36d5411ac4fad52b6a3e20dfc082f0ae3aea46b1
Date: Sat, 03 Dec 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670046054

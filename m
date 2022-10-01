Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C907F2569
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 758D0C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664622053;
	bh=ziUxUqUc5ZzQ0aGteH0tapVChU/Mi8BdcF/TfGeLzys=;
	h=To:Subject:From:Date:From;
	b=geyCOXOtMhThXH7aqd1x+pvzADnHrSdRS0AayIQzDJjQ60fZuTYJbi8/tI0HSO92B
	 11CEKVl6FDzLMaetn5BRIqBn0OdQItcu7JWESbY3zSqOF0qzHesiWedYx0QehVn27R
	 B3sn8o75WskHpKwkMPv4rZeroRUV4zHNJFhnCuy4nRUBuxLPQ5c/Ll/B+vHg72Oo/S
	 gcbYto0TNPFUXVYetTp9vkL9rBDDwlWXueOUBP9yIZHXkZzLkdg0fT/PZXsAtXU4UV
	 HAWQZGL16Uggolmk+GPtLD2cg8hLH/wagFg59qgg5Odfk2t8x9mtpc6oay5rZYsjbS
	 EqGSlSSTq5+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561A1C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166462205332.5432.3501744808950770736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e11f8a97991996f4473f3018e26f6c24ccaeb5afdb979d64e533583ff787d3
Date: Sat, 01 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664622053

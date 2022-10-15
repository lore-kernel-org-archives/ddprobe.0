Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AD2620
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79335C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665865853;
	bh=VDqkoWnSTjRksPHdmCMF29Y6McoTIBUoOPHt8613qBk=;
	h=To:Subject:From:Date:From;
	b=swLtcVvZVqcJ99mg14pHL9s7J2OSRq6qGT8rrFDUC0nWEqslL/YBeZ2EjRKMoXQoH
	 ZIwfZ7Q16EK+KY8OvgikiLS/GaS+MWdTgh/rx+hIg0ddft6iZYEJd0y2gJfaEsVFcL
	 8S2VVdOiH+fjbupTcEC02xFAWXliRkdkE5R7Ys/1KSoa/t22CAa1WgghVj7H9NC/TR
	 cCTzorA9KZxg0vzMeCN67rCjKTZVP0RmnIlQs4Xp39RIY+YwJ7J5vSHUC9ZrxgKRXN
	 8rWJSVOtEuw4B6fF1kv30kowR2jBM6oH7GkjvUw3HVv6zQIJ5XaoOtYltD3np1P783
	 Qvqt4zldzkTVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC60C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586585333.5693.9932885677948168433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafb576cfc13c1124b075115f9d91c57eab3ba5b73170c7dbeb34f91483b3415
Date: Sat, 15 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665865853

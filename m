Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B1427708
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65E7EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667423454;
	bh=OMd2aLn7ZFEoYCS4ryf5o8qXuvh6+e2oXLYmV6w7USk=;
	h=To:Subject:From:Date:From;
	b=bQIWJchihmRqv1Pg+yMwtgPpAptYPVWiNQgTkKyG/f09ataCvYnof6ZxyB4M/ne9g
	 8nFRyCBSXkc8mxlvF+zqd8C00ImwO2U+Q/cewNC4aYY72A3IjTJfC6qENm7FKjAoGi
	 nfO9P8vLAmlpQtaLVUTiSi1Eef+OX+UwVlYABVaOlJ3OZmdWQbeRO7Qy3tSvdMUf5u
	 3bzbxeVuNYgA/lXm6qLKp8xMlt/3IWJN2HE2yOjGtmlpJM94YP/QnGGh0TDpSmEJvf
	 VKOkxMQgiSwwmZyIykhvz7exkMrs7hC6B5nQoxs5/Y4zgOrPJHt1frXyUBBc/RICU1
	 nCVA66/BRWWUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500A3C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166742345432.23991.17639589255479879799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadfc0935e8bcc9dcf0761f62dc069ae726fdee7998e36ed58181dd39133c7e8
Date: Wed, 02 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667423454

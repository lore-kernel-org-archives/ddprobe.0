Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78F3290F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78310C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668028854;
	bh=DwqHXXPEINmA5yYEgADZmpPqnE/EmlR04Ra4cPe9r98=;
	h=To:Subject:From:Date:From;
	b=WYmGtHtRJUc37ugsekQAc3IuEB6hjg7X2o9BGrTMYaycq2L4fsW0K7gZKKkixd97C
	 0D4W8mVRhWhS6OqLpeg3PLttC58WTDo8gujXAA/0ZZp3WJOqKN5+JnWNPAUA/lIAjO
	 s2XiBHXGggz6XodM5ZNdfMPGvn1+5JIT4Ri+uzFaYRHbQCQgfBpzBdId9NpZ8ikUT/
	 B3E6PgXXdwIIVuIBaCK2mfhj3d3UrhnjJgFu3VKLtr67daVgTmhAx4g0HrXMKDYeJy
	 eGsQxtuEMbZrB0baRJYPe4BU9qKFhaxCDXvxfXAF3RmYnyTqVb8WOoiqAphwxV8l9A
	 5nJcJBBBb5Iag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A48AC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166802885436.28864.2211705959681580083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df1efbfce38604261a9dcbf54b85150e8acad999a784b22868ba4c849b573e7
Date: Wed, 09 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668028854

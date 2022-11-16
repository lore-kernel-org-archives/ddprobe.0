Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B244F8F42
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6693EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668614454;
	bh=MSxhwAjCwX1Wmbo75USwfuQu95GPfD4UwoBKQMy/5XM=;
	h=To:Subject:From:Date:From;
	b=dFwxzdPe8d9hw8zcRn9UwhrBkh2d/lE8RF5Q9hVHahs+zZ2HSWbrQtrfN3pUwjiTr
	 8ca+G2EMqkeVsmsZQbqyZsoZPR13g+SUuhgIuJCBEG4Q8BcCBJG2IHmgVGmzjK29se
	 ntGKORVNavQzc7UwYZEyPaE/1MwYsLYmSlkBz2cnJ14VTGt7t9OYsxF9axUYi6u54t
	 XBCw4qGzN5BAQo4UQe6hChx8SY3pUoGh3cFPUoEsluiCuS1mW0LSokcaBbaL6SdiHK
	 cd9aYuiTUWngpYNcxQKuOHt3rjvVAW9HV0Fh/FaQzOZUSIkQ97HIAxqfuuUQgBsfmY
	 L79NOLENunbjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50349C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166861445432.24128.11953592000047353430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a79634bdbf89dd8210390990836e47ccb46f1581a439beecda0a8fe8a3269f
Date: Wed, 16 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668614454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2A315A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68943C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661560852;
	bh=RM/FamBLPdMJ8z6rUyD/zkqgEcPiA7G/YlRDcM3qOqM=;
	h=To:Subject:From:Date:From;
	b=VjTWBD7CI01mcUS7MbjibTuAqWhapV9CmuEv8WpEB8b8xFVJWgLU2DC/OPlSuV6/u
	 JAhU3gbnQkbQ3i6+6+DPjemSSid6p1aJlBCQvQ1htIYHuBmcxaadtyBnypuNLC04gZ
	 LcNrMC/llsLqoOCYhtkX9O9oTX82NiAzrf8J1LC/KSlqiXU7srD+Y6EoRJccwgvRHj
	 Yi0dsDsK6FJKdAaxNQjRh49qFZ0fqPPgjjHxnjjfWGsMzH6V+48sQfgtPNfWXWEKZi
	 nZvsT/mKqAnmFRbKA6+YOWjUQXNQfnjXXN5eXWu+WOUNElcz7Tkt/SigXnRqrkg+Xy
	 7L0YcFcLqm76w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539BFECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156085233.9771.12943975334182858202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e6018bd4215b445efb0ab32beaf23e6118e8c49b3b049582333dfb0023e3f2
Date: Sat, 27 Aug 2022 00:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661560852

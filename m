Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB55110EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85770C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671481887;
	bh=a7PHTE9FSVjXK7JX0VC2qemJPt5803H8HuGg22171xk=;
	h=To:Subject:From:Date:From;
	b=JUtwc/bHKKc7kNVaCBajdVkpiNcFY1L4oOEWnU3eueACjlovMZi+2EBkCpAFgJy6n
	 dlcEJtb8zWz6tXhc2soKgkxBGjJQhf6EJU5ExT+dTP7fVXxZhfVk7U1oopNIEcb/2O
	 BfWGu233YEYbDhtabP0WUtqTPjLlLCMNbsd2IbGPkh66AfabJAlGyXw/WrHc7CYXr9
	 lo2rmSdjus0QckrZIDJVozoLDrBCy30lPbYFtlUdewj9UyFow2QEVrDJQygLriSCf6
	 z1CX8hLI7WHkZR99b7vjHWI8lBj0TIg2leBtDhwYnAYAsPuii/lqxbgaE+nzAo3jjb
	 ZKzlHv4ImYP8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63999C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148188740.27735.18060359532541948811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c80c7bafa89c18e6359d91a1c07ea70375bfa733a8ac0be223811df32005815
Date: Mon, 19 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671481887

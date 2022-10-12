Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64AA8F46
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5ADC433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665599453;
	bh=z7huWJ279vstQDu1YNfAdGYYXSZAmkgpk5TOusnKpYo=;
	h=To:Subject:From:Date:From;
	b=BsC9J+VNNHTHFs2l0oH6l/K4jaCk0juwLjOinMU/9182NS0E8rP1eJ6PmkkJEIUi6
	 PED6DJ/wuhn+7VgpfW+GM+hy+9nYsQ6CsRvy8f5SYPmPJzVkgbLD9M702SOIGUwLUb
	 lNMmH4A1b/YUW23DxUPacKzudraK+Q4Jb13ItBnJrv+4bODiiVUwPcJZ9xRB1qBo+Y
	 sN3RN0HfODUuZOb7WkZpRKA7aIjJ/GKWn6HjQrlKqtWDaHVia1OGYoByjI4FLXzOLU
	 z2eBZ6LKEYt3eCHbZ/3rwwJSWAtiynf8cEz5fLKuGiAtJhE+KUQ0g6ZmJaUibselFv
	 2JKY8UY0qrWUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A610C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559945335.4472.17440828861047511557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8104c7f7ca67e53310e0e7ca6cc62d63cf49d897ac1cf3607d92ff140fe58c7
Date: Wed, 12 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665599453

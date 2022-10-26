Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76097B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60D43C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666799453;
	bh=4Q9yrmKZZ0wo28EP9YH283PI8aSeIGi1n+Q6oHuN0pU=;
	h=To:Subject:From:Date:From;
	b=MTxvYy3nEFERWytBZj9itbZShDxZU5nKQ8ZduxcjkavymC0nZFTiA5Q6kXFLfiuGj
	 IGA8EfetE6dtOW0hjtRAtw4X2ZRMC5RC178/nXKmsbRH7zHS1F+A3f85RVil66NObh
	 dH/i73sLBGoB3OiQNHMQWSDjEc6ixHYkNjvepkoHQNjyyrprMRMEuHDYYZtNQ4wo70
	 YuW10Q/glK2bsEPdfG8NkSOtDan7rPH6bU5wPrTV3IijjxOGc8tiq7ooN+6SOXlVT1
	 2FjFFzNrZzDnEos4LUiuCL0DAkq+T6hYyKLnvPcykmI+arNyjKGC8nlTx02TVM2wWh
	 0iGulWXSu158A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F075C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166679945331.26400.13503051696434854521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7613a8a2c93437e6c7607922b75732f525822092bb33386dff1fd88f396d59d6
Date: Wed, 26 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666799453

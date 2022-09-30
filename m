Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CD81FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94B80C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664528453;
	bh=EmZWMuwRnz4fHEWz5OflNoMwjCtEwxvEXuRvjdCk0Sg=;
	h=To:Subject:From:Date:From;
	b=sKOsdSm5X7vDbP1bzUSDpHKAP4uFD3O8+cmtOYv3tHRvB3n6OsSxjXo7Jl+SvS3la
	 bukij+ZIMUO/Av5UuMBAk7XkZs+zqD5H5yQV/1jtHBHJnaPLU9CAl+CIgOLNg+0h0z
	 1uztEhGJrCQvGQX+5gRYSNdLJki/lD7EAHOTO7xQqw6/q0pB52VNiCBeRnNcCZ+YIk
	 /9lhs7K4MULnmo86eXdXBt5mGTOa1OgradMTpBcznh2xsy+ITuReqbNja+sf9YFUiJ
	 SfwmVQ31FSYNb5IA3dlgWRhIlbFtfc+n9P/KXL9PO9eSS9KquWRO4zTueyqzXccuSd
	 X9wbDBStqmI+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 782A4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452845347.4105.12417792900331597824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36321670388eb2fd3f76d31ae28c5b8be11f75bbad69fbe32dd001cb2c5c673f
Date: Fri, 30 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664528453

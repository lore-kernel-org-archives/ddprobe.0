Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63720945A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3785C433C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687635188;
	bh=vwM8KaWKNEXlUo9iCLO4Q1nhB94NnW9PqMzmc/yBX4U=;
	h=To:Subject:From:Date:From;
	b=Lv9xeh5jbHCK9PiLdy4aaCmfF8361o354+31cKmvtMLYxTErJYCFquZbF3o8QeJpO
	 zeQ0ZNXJ26as0u69CoK8vB3hK4Wh1t4UWOiCj78hKhR06HfmSOKhfoD5nMHxKRJLu4
	 Au47RWFP56FTH2H383wwMr/YnWT4z96Z3sIoNogcGmUv3ay9YIDngJUF70G3XL41/i
	 gcVXPn7MP5O9XKxffIleXOGAfVltcWBf/YDI7EgUkrTNvp4D+XQDL4ymTsNo091HyE
	 jz1NNe9t0Rfcga05ODFus1qj1YsvAs+xBNFGN0AKbCv+YsCRADk7cj4FHoUSslyUw6
	 pZw309sKfszRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2369EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763518872.31003.9857887566862876454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bac98e48b72fc2359deccd4ba84117ec9bc9d7631dd33a885ec3c5b3d78ef1c
Date: Sat, 24 Jun 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687635188

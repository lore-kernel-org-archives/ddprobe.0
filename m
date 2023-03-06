Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383FE53B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 16:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAD0C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 16:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678120025;
	bh=frwzyvw9CxJj5EdIuvAiDr3IE/5ZCpJ6ZOGPhlSySBU=;
	h=To:Subject:From:Date:From;
	b=dMOOCdCxqdgM/jlfTGG/JePOghQjp97zY0Q28iI1/TDplRXIVSZ7tyw6fxdhKZ2Jh
	 d7yfc+vnSMKeejzhqctS2lPHkyTZ5NPDWl2viagJwU/0rEBc3ZuNSnn7iNONoMq5xM
	 KZW3vBQ6fqMRxaMGQ9c82bzrEXcQlAsGp9HJO2KR77ykUC68jBkCoO70I2EmTiyNkA
	 BBnoBfLh0UfGA8kyecrhUG+N0moeWarZCmWF7kcwp+Xwve2nKbEK8mocnz6jAPUgC2
	 7BTm2eLUZN2zyaP5ujLPk23/bUPZ5pu9baR2UNt9JAxpuFro8Cqwe8pDbdf1D2O6BR
	 dcYrtWlV/7dJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED7CC678D4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 16:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167812002577.25982.4076384033643074037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43c3af84e290904b245ee36091f8961aee514be3541f240e2487e8ef27f0f30
Date: Mon, 06 Mar 2023 16:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678120025

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9A915B3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8D5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663125053;
	bh=qwac8XbWyJH9tK8ElObKTDXzqIrg3KlLI+kjRMxpB+k=;
	h=To:Subject:From:Date:From;
	b=LpW5kiPam+u5UMnYeK0g3R0s0jGzk6kQ+B9RsuBxyaQ1SKr/3NQtQ1DSJkvEaNaqY
	 e0HJnOpVLdBslXMi8dKWbkG4n5ZMQc392ITkFNUJGCFmjvk3xPbg6pOZirZsP8Zi5o
	 UyTOcv5nMfPjbuCekc5QOlYTFPgiH+604T/rHciqQfW5/Tmf6HoVopM5HPW/ISQ7TR
	 Vae8prHF3vU6qWlJGQ+SZRH5v83+6jvNpZMn9vOHnhXPTyiei7CbAJ3x2CRH89XKeN
	 rN5DuNO14cFbllaodd3ytFPPWOzxRmYxWZOK29KxoL5+h52tpUF2jnKSJFfv6coQVY
	 I7WpqAehLebFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516E3ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166312505332.901.6443242348891605536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711cb82778b6f8a80cf92b6d5f320555a5068448ffeb16d154a9fc94b2d8c7f4
Date: Wed, 14 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663125053

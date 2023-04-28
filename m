Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AABE19C
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD7EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682649125;
	bh=3T4D42ZMrhBTb53U8ttU59IukSgJVZcPqhAzUnFqWgo=;
	h=To:Subject:From:Date:From;
	b=rmG+QDKNULINOG4lyHVyxB983SEKXAqRaFvbDjuAEKTKv+11PZG9QdPHVaSQEeK6I
	 h57F0CKHpq47LnvpvKE9gRIiiew3EwdbtOSaUsPM2Zj3sS0KEwIjQshNXlSjbi2OBv
	 caesaMWvakSnSvSMvjGFMnaqaMP83btd8Lap1EyOy0Nm6TgW5gBcsGT23L+YQl+9uN
	 evdH5IZTPNllCIU7zmFWak1G0uww/i0Yha4hEmUc2uD47kzllGIXTnXHxKB7nMLG6E
	 ufcyEyuOZuCyfRSkSBjM1RpVlAnBzo+v+XVXDoILn7S0P9yMOFLEWiwIUWpXqOqg0U
	 /FHYsjp7KfWfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5CCC77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264912576.6667.2422344119395131935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aec1b8fa1b6269d546ffc7228f64ceddd4b6b1831923063c587b95e8d21c455
Date: Fri, 28 Apr 2023 02:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682649125

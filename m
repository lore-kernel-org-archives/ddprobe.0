Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424381C15
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D467EC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675335965;
	bh=0/FSHXn9Opcqpt4Jk6OZTgB4UajhubuOar1/b+DRrQk=;
	h=To:Subject:From:Date:From;
	b=XyG4lQsr4JAsq6Lq0duXCMnFr66QVXUh43/rbTAQWtyYsUAXzYZ8O0lTP0J05ymBA
	 V6T2UuOHK+8EttdSL6g4AspzgPY4DSUtk3lg7oC/bhAJx82WuZRVLXl87ac8gM+Wd3
	 xoiXANe2QyzX3Fut653pKtKvJ40TY5b0IAb5E5tsc+QLXNeEaiOQ9wv8Zmpb+DMOgE
	 8CIIFgvcQQIef95kr0bvj3+sTQPJxW7B5gQGh3+9rn8OdOXc4Hei0NfJVV2/nhvkRW
	 G0Q+qUtmjlz6SNVlm5EY8ykd9q6Cv9ZdB+bTynssQTGir0vpEk3A7uwtWt5Noe7nLB
	 NZlyOWQ2L+Fvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47BEC05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167533596573.31350.11309867926688296143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac4ee44c51bd72406e99a1c30689a245829e51818cc9f281eceddaaeb83d28f
Date: Thu, 02 Feb 2023 11:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675335965

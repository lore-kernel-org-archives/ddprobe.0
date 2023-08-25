Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCE81FC9
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 287C2C433B6
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692953649;
	bh=iDKxXuqFs8be7hLxmxMxg/6Ln0/PfHGYrMt/69PjkGw=;
	h=To:Subject:From:Date:From;
	b=WNcDidO7Ot3VEvfmD2ppNVGuPlOZ+dHS8mPHRuHv8xFkFQlJpSgT0fm3Jk7vbtoFz
	 HNyXNRadRvp1ggeiZzWNYeROLkFU+8uZx69gRCjj1Ka6XVaYHFe8PZs1AmaIS1pTVu
	 0nAKShcbdKp3iPFJHAj5lA6qZN1FaGdSuncE0zZ7MMqXmz9sRT1nhGCn4Ln/erAOiA
	 NAtY040NzEjFnCYe/2UtXhygLozH+oLwf/uDzKa2arv24IcUYqEFpASnD44gBNDtBG
	 xJlF4xixFMSkeUEUahqdhKFF7A1sr5ngk3ap/XQ5/oHKyTqbQONlhMw7yzibteV8ac
	 VjMfmWkA/dYkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A5C71133
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169295364870.25785.16169149278929735734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0bbe9a5ca0a46bfc8d859402b7a659b56788be766282f9b7c24cc807f56cc7
Date: Fri, 25 Aug 2023 08:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692953648

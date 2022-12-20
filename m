Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06CA1859
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFBAC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671547287;
	bh=YIhh7IC+Kbbpz4gJpQUCXDO+Aad1gg2YD+5zf8D2LDM=;
	h=To:Subject:From:Date:From;
	b=kiLdXM7Oo79uRpiSUiYNmT5tlJu1QFYk0jasHOVioZ77k4n0AeQvEaxWoSYC38j7m
	 B3ijjnW4PmYv/LEvz7jRTxIAFIwhRP0ShvSafgHJpIfULdcgmggQYFCcW4JiFUK9MF
	 XmPJFe+1TXt39ldgeWaf5+9N5F4bVckUne4VSuomAYbaJNpCLinSbry8Ixk2xxzDtV
	 Ens8VuLfmaDZfdGe6+ZaHd+ddrvg8SUQZcXQBC2n+rSl5KqVbnoia/5NtTv18FgEdr
	 tq1g7zQZfVk9gHj4SWCPQXKBFMOS7EIuyrWs1Q08bl0hLf6cooo9z8GDlfJGpm2z9O
	 //ZskD/KJVMQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631E9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154728739.2797.5369360844875673051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7e77251d1d861e8b4584d72b9db770bd4c190aad4556b96e8eea62802a6808
Date: Tue, 20 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671547287

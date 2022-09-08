Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DDF3D65
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6855BC433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662652253;
	bh=ayp+cQPxldiclWEkh6F/t/ml1xjN5xl2jYuo1h03Z8Y=;
	h=To:Subject:From:Date:From;
	b=OXbOyVYNrY+VVUY6R0UHyuvxT9+JGP5pnEuXfFDKCHbGzHBSgPC731VxTezRKEn6H
	 9nM8DiTkKVGyCH9VpJqwyRwpbCFqmHqiF+81WpWshCxJTpu77W7yakaY7u4/E/E2lJ
	 isEnPaG3ewdO3UX5LpixWDQf19k4h7nqGlAq134DgMI9mfiB4xsM3kIx2uekNCYgU1
	 foprdt2AniwmT2JvO+G3gp1w2T37JaAGcX92vikq7dZQoTme00bHXKGAZiyXGxkJHv
	 4ajbTi+TCxxZ/5s9r4nIf3ntWNTHqknxCdHtandzYFUEXSM9MyAnPtNv6zISJ/WJZt
	 hkoP7QcPtUlvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52307C54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166265225332.25157.4807702618341972837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9386d5e67613478975c4ce17880baae9c925d2fc1695a98b69d9c3369d2a6cdd
Date: Thu, 08 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662652253

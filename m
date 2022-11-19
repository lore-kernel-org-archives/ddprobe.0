Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C764E630
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AAD5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668846054;
	bh=/Ug8UJGdi1sMsim7xjI9wrNX9ykViyiXl1+ht4RzUHY=;
	h=To:Subject:From:Date:From;
	b=ibmmoH4XHojsHVze/dp+oB4qWssVeZIt7yfYZ+OXpc/f1v04BaCOVy6HJTadtNLeG
	 l88vtf6fsV1ZTIMNa8suUc/A7iiBAbixLQIyxsPQ9bWPLXMuGGuEU0RJQNunp5zar2
	 wIQWdmpgJnrnYKILTHAjCDYAEqkFtT5gR5aBt8XzZdZKX8a5xPsVWE9NGYGgk4Rig4
	 lq8uYWZO1BFcLq3fvsfD1pQVded0bPZamM8X1s06J7GXBb9JyLZ6beqj2EQOYTu7MR
	 ScKEvIO29vg7f7MIT4KTHTVR/C1sbXUmekNZG3+I87t7KFe0GhCdnHvU4kifX3QRbs
	 JHNfh2Tw1ifJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63078C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884605439.11973.13441792000335735975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94551e4e2cbaf19e4f1b28605507d9b7893de46640e327ef14a497feac913414
Date: Sat, 19 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668846054

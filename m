Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B8E79C2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 21:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC39C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 21:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680990665;
	bh=dacBQLAyIjOaNQSUc6CBP2IYr8lBsZ/RwyTezyzPfs0=;
	h=To:Subject:From:Date:From;
	b=WpNC8a0O/2d/Crtrfyyym3RHAOKExeLOP/8wDHdN98yjE8BAxtlSq6GIUktkVG9QX
	 v+84/2m/x+9s9Q65DNmg8GS0bANf65J7zwyOzTgme7arYn6/NZkZjfXJQr+MebI6Ce
	 wdPAAWeJFYfQHAcV2LB3v/ZhLR0buqMdNxqeFrvqj3rD3/dPl8RU5xlx4xTeoxIPR6
	 196DbysBTYQSVOgRL5QkNIbcCgg+wGmvzoMBqg7k9k1kMBSw97yjV0Y5E1zmirrF9y
	 e1CjPd6xUkuQLfy0QcgGKBbbqdHUNVaHsFhH/0xp+wmW1soU5nDRDoHidCzaL7AcQu
	 EY4N/hfAu/82g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD196C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 21:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168099066574.6910.15840030403310822047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48740292fa5260dbfa5a9eee20dc901b50b74d758cd5d07e127a548871f854a
Date: Sat, 08 Apr 2023 21:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680990665

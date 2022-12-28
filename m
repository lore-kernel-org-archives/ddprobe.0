Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70B310E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E24EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672221087;
	bh=xt8T0ul90vHqO50NBJsLmk05a8E+3RoTMQaXeE7FcTg=;
	h=To:Subject:From:Date:From;
	b=Rh651JLcmSnjRhQ9NisxqKhUqZCF7s2M9s7l5+tfTVoQet39cIy01syWpIZ0rSOD1
	 LBnzZuGUxw9xGurwlsOZ+rRL8QDKxmD3TL1ZPgTRfYBRoTM+wGy8xZ3YsaOwojKSlM
	 e4D8qbOjbRW5amecZN8rIzAunOqiOGqgfHbqQ9xhLhb8rCpQ0UqAP9yypay81mnVQZ
	 J1S/76W1dpl/ueWxdMh9u/EWr4EK75W9oQElcRwAAtjt+ES+ElOVqxdj+8cLlqxJ8m
	 528swzXcUQGQydwanTJEmtjshpR20qJQ00Ah12V8Y/dIo1ZJ0I3u5vmRJ97k6QAfOD
	 ugDpYD7oP8ZDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614BCC3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222108738.24286.16520093246593034766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fd8d314b536f692c9b1ec8dafd29129b7b4377c01a6fd080560eea7c73aeed
Date: Wed, 28 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672221087

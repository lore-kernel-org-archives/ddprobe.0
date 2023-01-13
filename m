Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA032640
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B054C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673589087;
	bh=s/vgUMsK8kPwyvigFBnAwWAPjkO98ntWbL/UZHP5y2Y=;
	h=To:Subject:From:Date:From;
	b=jmBX0JQpjugl5790QkykaG2xWeMfmHT4xmZ/P8+n8nNwzEhsQ7uhhbDajTfiWGZNI
	 i3JwFc0U0XgQviGmf+DNZ/HDy4C878ibQZJOx2+efGv9DqjVOxBU+R+mhIghYyQat6
	 gcBxewhRh4AHK8B2oqm4aR0M89DxokcVk22MrBovPFkEqdWXZLAtpZzj1bHpV4v28S
	 1RjO6maiHOrvUHBw4IwNgTXLWdX7rrcdUgPXf3gGabLWC++B6rsv8H7/qi586lt+/t
	 1LQC9NMpe+6fDcfQRCxdux7AMGl57piDWDOVAhrQN26lLLku+OHF1T6VKTvDKdLBA6
	 Z3SU4gPVYG/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697B9C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358908742.12718.17349166855466481886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c420842b2991507bb6ee8c34e159cacc98e179342be809321bbfc68cc11383
Date: Fri, 13 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673589087

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80654400
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A6DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661530252;
	bh=FBuFr4bTemVcAKH7uzZ0fWCiFD+jVPk+dGnrVAml7BQ=;
	h=To:Subject:From:Date:From;
	b=XI6x1YnOrAkQmiDGIOgsYIfyLaluA9FZxRpyIPL7nNUyDnLcERSU+rRb4NDTvy+oY
	 vjwV9aKlYRcdkDlpHTZHdEWadnrlZ0zg26rX89lgUG25f/UsHaHyY3I+DV51vybX+Y
	 mqehUVjTplZTv7k0StD5U+DL8SIGPwCghlQZRMAEJuK/H1REMFSxVth4PLkLrMJl2S
	 ieTEf2sw7Bk9YmcGXO2zYjHVO/3ZvrlpnFeDbdzE9VtY6sqg3OeFekVjA8zWsRTK2z
	 /vKMrTgnndo3XxJjt31SVfbDaebK5HjcdfqQJYBy7rWM7JbQhNJKAPBy2kR4c3ms1T
	 S1G8vxszKN9hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6E5ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153025236.31951.8097524854753963964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce63e7c4c53efeb038c1bc33503b7cd9121be7919a51fcc5bd196be3f68b15f
Date: Fri, 26 Aug 2022 16:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661530252

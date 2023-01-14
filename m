Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35C97E6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84287C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673669487;
	bh=77AoZpyeFocm1UNcaUbljSZRiPYNXgRO1GLW+idxM4E=;
	h=To:Subject:From:Date:From;
	b=P7SB3H2Wp7Ql8XyjMJsnQIij9vtOYOTm2IMO5931Ju1z3uBVTL/Y0Sn/uwcbWHJUc
	 CqzXc+7cvCoFpU1RXP8eWktA7T/XIs7FiFBdj2Zvb+m9xG44aA8DjNjsxkK4pf1BMi
	 sFsSK4nlOBLE1dcsdmIqrduuT0mFCVY2xNOTl7GHkdYmBZxQs878vo/77BpnlC81Cf
	 07q39oydSYJZ8IFvhZ3KGPp73jVPt2actJxJll5OkNXTTM3UGtmC3bEHX5uSuyX46S
	 4PnJBGyzWW4BAeyP/+oXbjes/waDLJNhgyfONIpDxRuw7SLfTWrPIVBEf2XE7HJgDM
	 IzBQUBKNw4Lhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AFF6C6379F
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366948742.31147.9564474111766076741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21ae1541f62e34e3575280c71022ea5833423df2fb3aa05596cc4bda4db60a3
Date: Sat, 14 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673669487

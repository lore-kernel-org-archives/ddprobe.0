Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDBD23A7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70890C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664609453;
	bh=9UW+ViwTzx/UKj78nMZzEgHjIJVWhX0u7ZChVmkHjHg=;
	h=To:Subject:From:Date:From;
	b=AdaCSwTRs/DlE3SuYQMBS8BP7qHQIV1TF5b8TYpQLqVgI5nmaVYIDJ4JN0f+el3r7
	 VBD4g2rtCuqMJS+XHIdNM0ad3PH7f/bN22Zc+xzMzzCc2QBbTNbiDSkpodBFKEnBb6
	 zQZ8Elj27Ci0fKUvGaTiAIFbn29SLqcc6/cnCxxTf7jgpFBmihqMy9JqkhwlZ/ZXhf
	 w0ayFFyZYM9x+rqYEOnu1cq24Pqc6t6P/DrgnpE2SFMQNTjn//+DG2IXL2Vd+Lwcuc
	 Oeajd9BUF4CK0Z/XB14cV4A+PtqlODSLXcxxb6aUaxegAMl5bHt7TlP6le1SqfTdjk
	 c1amzy8rXJSlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5346CC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460945331.3664.2005878671247925425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2711fcde205d56abfac920657a2cb848e29b296961c55d5446b6ab3b860db5e9
Date: Sat, 01 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664609453

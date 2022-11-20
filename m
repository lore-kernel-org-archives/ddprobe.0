Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D883A20E0
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C150C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668958254;
	bh=L1irfNkCh2cuWmgr/Pk2PH8NhfWwGofE3HWp3m4ii+I=;
	h=To:Subject:From:Date:From;
	b=SpJcP6h3RQD7bUJCuMpmale/HRTd1kxm1UF1pkYwmbzeGJHEngIF7+AhRSomrpZcL
	 TCG37SjMh6GoFQ3BakzM7TwN2bZhR7cH7vaiVDGxuAst7EdogXWoj0rDV1mxuiTPKq
	 /XWBTNcWKf/CLcNcEnoXduGv63yW+JmFGatjygrOtQmKugTNrDKX+lin4SYnc3xssL
	 jU4Q31SoCcBCGoxGS+JOE28G9kzDRn0WjoW0GZfeqea7kADn6le+TGoGIKu2xLdAl7
	 SXzZlFYURmbC6C3UAO+RDxFL5cx9AuSMxKbkjArGEdiM2RMlDWzRurPd66DP3v6cRS
	 WqsluMIrLcCHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E99AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895825437.6725.3158643568988325940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4634ebef388376038bd5e39adce63727994ae4880868ce2437815aa05dc319bc
Date: Sun, 20 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668958254

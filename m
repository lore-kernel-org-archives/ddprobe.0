Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A196FA3
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5533C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688717828;
	bh=uzer3soSbS4vqvW3O7dNMPdvU0zahfYPddrEzHPd95E=;
	h=To:Subject:From:Date:From;
	b=VAPeGXiWQZpQw938sOqNe2K1a+75ChlKbdXclET8WENNz8DjC26ChrFS5KXQ5huFo
	 4AsnC3BOTA2KK3Wt62is8p6QU/+T6xPrArU5wRC36vSX7v4lVI8X/TyR5U1JXDG4nB
	 F3NLdnC/70Ok3hB6pjPLBhUlvj7RjIHpJSROXFER87ZhOyQ0McaOufFaF1R5Jqrk9w
	 BzAk0GvsF733KOXr9e83o5/kTB5elMNhgHONVFF/vhwsdAF+HSBam41XyxZTgrTe08
	 khuASYwXPFopHOQLW856QhNHUNg9X76DZI/UNXdRBIs+eBF91cZClzDF5LmCOpGXK0
	 kEnNT35xDzl2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF600EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168871782876.9744.5465419410650039175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a091ab277821640d0a9fd3a8750efe46086b9999825ca79a080f1d8567e20d
Date: Fri, 07 Jul 2023 08:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688717828

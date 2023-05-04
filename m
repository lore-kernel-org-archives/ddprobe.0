Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32696A2D
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 06:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACA9C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 06:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683183065;
	bh=SvOK/UuMVryDegPvPzKCOiU5QIJ60aN278clVzA/QRk=;
	h=To:Subject:From:Date:From;
	b=Hv9phXPQWSrJJyra/NE/fTIOM9sdJiBMtrj+BHKqseY1mdix8BYllPnr3y8WFo9hv
	 Gs5RDExhmAEONWsTFqyBcug6lygi9rDDwK385n/LAkUcGqtNLQ0KXfC0QXk5EqqVeu
	 Eql3xcHEirWvHdFiwype1I4XpJLASWl+5on4Jm64Hz+GtI/l9+S4hMtEJnR+VtSvEE
	 CkN7i/lBhnRIFc1TvRJLnyTsYrN25yQRYG1jGF3NCb5pXluWQKwcTzTBJCCnHYMaag
	 +AIsQ0C3UvyYWz1Zje6gPlwwMh5QJv2wJrWFgMVlFCtxnrb48rpcZek5kFwg4XvnEf
	 rrh1J8rifvblg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FB2C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 06:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168318306575.19378.1283025720354224588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8384abd97c5bec0863fe4ccf226e8e90442f6dab36089d3cb7945d55836584e4
Date: Thu, 04 May 2023 06:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683183065

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2F64C72
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC3DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666116653;
	bh=VoH0XWODELpyvlCbfEg+nTKJ+W+t8eSK+sWv1KbOVuQ=;
	h=To:Subject:From:Date:From;
	b=G9ZO+hptv55pIeNQtKkjW7G+UNQP8cnmRuzvDOi7F12OMU8TmQaJIaGoWAZI1s+OL
	 WFRs7p2N+fMSbsAW0R5tJVDHVTeuRZW1jrM8aFsIfXwFHAnzxgds3ubKIJyQ0RUpBl
	 by6fd0s85qyRJjH/l04OL3HtqtR0E7q2yZIiLJ7nzZROnYHfVE17y1fOqjAP/OZCpW
	 FVMqw6EOHv18CZqJx68/9xvTeedz3sbeRQHA/P1AW4t+7T4TfeYr8joWyltWskokLI
	 ic+Fib0cdzwWnOZdxHzDUpsan/d7FXu6eLMVzuFMoRGeomeOg62sp1w5sCpWogi2m1
	 /zxuTNRyfaNiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC35C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166611665331.12317.3298151199291085899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c37367d37cbf525b49f2db42f6f19daff515c1b1b2f30e3c4a7a4f24848d969
Date: Tue, 18 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666116653

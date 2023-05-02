Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54831622
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 01:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E688DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 01:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682989385;
	bh=JEXG/KbOmugHDliQP7J2IdaeZ7OK8I0cJyfKOKXcI0s=;
	h=To:Subject:From:Date:From;
	b=nVomA8kdYOf7WxzBENSZfHQC0iZeVSt6Azgyrqfp2L7JwtP1HcuQboxFPpScuO6Dw
	 AuI3x3A1LcxjamFyEHytTjoy12xUrp/jJGd2QYiazupJFAX4TvDbDTXKnhEHeLjo7T
	 AOQFHoH6/wG8HMbez90ka5TPJDKzhBtBy7kqk9MGf83F6hfL7jZWaJWlrxiBN9PenG
	 HhnSPrfqCkSifwwMA9N4JidUp/XYxhOVUEQinMfeDtnIu55sn0qTBkxRlGR8r1wCHf
	 PKib7ZTXrCyBhXYRHo9cWhpPB9mtl+y1AQsH7ErcHf+KbUC5dT728pzA9hR0d252tv
	 UvyC8UfUEQcBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DF3C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 01:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168298938581.7066.13696493550574910942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f53f1cddb43a92a83f1c59e29e0538831184241442a440cef508b0e4ba5d86b
Date: Tue, 02 May 2023 01:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682989385

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FE0374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 656A3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661835053;
	bh=y8/yIXpTqtfH8NZxfvI+48aq8HvzmJJtlUDtDgtUu6g=;
	h=To:Subject:From:Date:From;
	b=DvEPDiJdqIGCFg1xt03fGL/XJWCzIY+bxX9O7pZy1iEqyBl2XA/UK8GBkGAKeIOJw
	 pvfizS1Lz3RoWrDLUelTZ+VlFmgzj2LWrdr4iv1u6wmpmRUEPmAhqd3jCOdGWRirDu
	 PbKYpy2NOkBsXwjHRxwV7dtLvtZT3jy49ScqHbfOFzYTDLgelM7k2exlV/seZmvSX4
	 HIGKCXtUMI3YiuRxcwbJPGvu54XkbR2mt3G+UOPCiQGPWzZEHh5uB/wI719eR9NbSz
	 T4ocwnRa2frndyXGRyDbWGtbtlRpP420vKrQU3N8scHOnwGdeBX2oHrvA7sQ23Lbzb
	 WZeLmrJPefCow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5233DECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183505332.24381.4619242676271820737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8374f147462a600bdbd15eec257b1009912c1b4128259ccb6225d73828e86aee
Date: Tue, 30 Aug 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661835053

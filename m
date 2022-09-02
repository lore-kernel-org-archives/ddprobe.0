Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C097D1869
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEDBC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662126653;
	bh=JqeiUXUZJ9SH0jcufLkO2EuuPw+XIyWkBUhxxFGhl14=;
	h=To:Subject:From:Date:From;
	b=CnveUPKtr/kje/VCEvFh7TdcScgFJPPDqtnbJdvkyjYdeKrUmwPKpqyvS6IBeMDWJ
	 sPQs96VazY+ViBB9wuOSB+ahzhf1yLc4LrbI3MoZngtspmccQfnDpNJOQ57/ODGJCV
	 BGc1v0izJGjn2+FeumO/eK4nV+2US9MSRMYMW3HHaUnA52FAX0dUDeSAepKhiLgwXz
	 oJku6rJkjymdwx4r1d6ZHIS2amnSATUlF959tS/8SC+IcFzjThL6YT25V9fh3M2Rp4
	 /IGHdnP50SeMWtXFWx2bmFFk7b4rCpe6AhoyhKO+kg01kD5yKGNsDKPURpeQ6lr8Vk
	 3VNP4vRrmAYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D44ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166212665335.2774.12075754423176172658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad4749de6564884094b60c76500c7d2f312f6d3e8cdba395a9b1a1b535575cc
Date: Fri, 02 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662126653

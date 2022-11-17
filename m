Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D1B23CD
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71734C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668685254;
	bh=Shz4KTuiJ57+58SHrylarbBpIqFPl/T0uFL+mGnlDP8=;
	h=To:Subject:From:Date:From;
	b=AZ+GSzLQAtDB2b3MEHCdwObZx5+bomauglmofKf9lQCFNMiDu8lq3EiGAppoi+V7V
	 +K1dkr4NfkvfULO9KmoK/JxgvT3yEg6Ujg2aC1Z7xxGFnvhP91ZS37TwENqYibylBj
	 BIwSgZCG19pOJnpI1ts2pxqUAfU5YVIS85szcJDBg0dVvRVXj1jvwJg6PiaCyU63Y9
	 E8f2rooVJGYox6BZbYlG1Z5gDCvuqOifgl1+5vc42Oc15yY+dep5vQig6CWOrFBhSz
	 XbW0srJ1IeiSDfX5eWo+H+TKbEAPrOwi7MgRErJbAAMPE8xh7n8l4TwjpmIgKusEX9
	 ONLNayQuEotig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D48C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166868525434.27336.10010557571251991611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f201c379232ce006d5be7674a3be4e7996309814bb487cb1412344766410dd
Date: Thu, 17 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668685254

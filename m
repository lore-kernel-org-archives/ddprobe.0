Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED5DA31
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 03:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651117018;
	h=To:Subject:From:Message-Id:Date;
	bh=uzVjoG77iRCEiezlP4lApY6q7E3I69ZPL/ttp0AqHuk=;
	b=chjV2VUGEXy2o/PRWbGRgzhhr1C2HvaEJ+ko1tfsodt2dKGdkI4KxgoLOg9hragt
	sHC2oCI/Z2rhP/jRUK16HXP70CFWa5rSwDeow04wGCUsHT16/5jWjN/iL5+liVd/Lrm
	rS3w+tSPsEmd016JmWcrjAshuzSoZ31UijMfvF7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651117018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uzVjoG77iRCEiezlP4lApY6q7E3I69ZPL/ttp0AqHuk=;
	b=AvZJFSTpNlQon1GcyJHNdzuuWGSUV8Lk44i+PgnDdZCGApkI+ZnPi/N9qk4FpeHs
	E5lYpXQtF6RDbO70ocDNpN5QJ5RZYD/B1XRzmF1p5c7JEKnmcciCXlHwxWlAqqKN4ID
	C6jFIQXnZ8JCfFTa5u+GctvcA5LBHEMba5AMz6h4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806e3e4c64-ce9090ab-d116-4864-93c5-57b93e16f475-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 361ba885ae628abbdaebacf2fa29754efd7988b8edb76b79df0d7289d2ca32fa
Date: Thu, 28 Apr 2022 03:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651117018

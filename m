Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B994B7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C65BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662518453;
	bh=yGCz6AKnRSuIcL2K7qGZNLWXTjn2KnNG8ckhB6XGYCU=;
	h=To:Subject:From:Date:From;
	b=G1kFPEaxEn7Z+gd+XmXvIQQ9+z8kEyOG9eOkRfhLFLXc+Nye+cTPRosR3Ej85ykTB
	 5OzVVO181gSgU1PGzs6Hegx9NIbBosiUfY+msIGzMB89xQiylYVnFms1J2LIzhHaOi
	 Z320fWAZPPacyLZv9/0WezEdCQ88L7X7SrEVwOHRPYJZlQNRelM+MqNjxq4guJFLaI
	 GBoN/g1M01pI2DottMvYd1pd9epekojf9Sgxn9TIZsbUneEUGUSfWjacCxbtiHzoAF
	 kPatu6MrmX3RpGmCGyvs/SO+gr3/7pqpktgBX0Wbe47M4HKybR2CMFsSoe+x3KqcCz
	 v5BlKK7KibHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C65ECAAA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251845334.9197.16106963990065640550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19915fad549491887959ccae83c0a7cc97c4754c0dc40c862f2fb0e174c2c63e
Date: Wed, 07 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662518453

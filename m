Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5867EA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6516CC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662082853;
	bh=R7O3Px5TfQAR1MkAAjt5ANi84TYlsx28JZh2C8mQwhE=;
	h=To:Subject:From:Date:From;
	b=Y/B2HtCQloOKs1hMOoEtbLWKLUYTt/OMqMHVhiGBoW1ofECRRc6NSq9GdGlWVCX3n
	 8LTgoWak7230nBqJ1RaexscBcmpli6GSUSrTXHkvAesUhyC7pYgvMzkWkNJysnsOBI
	 6TguDL20yrnDY2PbPbno5mSF4xP6cusjQqfHgMk+W3sp90lCj/vEVb+xTFjhPmyLkS
	 kYUlHP9f0KUeAJzSHPqfB0nVibkT3RNzwqZc8IPnrYhL+ymC8ki5lweKyY9YlhpTBw
	 Dwb9WRyJ3HmMXwRoiLBJ3jHmtpC7UdA593HzZJXx9Y/RgnJ3YvjBmNY2qkTkTXn02+
	 yFzbA84PQA/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEC7ECAAD2
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166208285331.11732.17237941172517012261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba4b8011f5e0c0958bd51b24aa83ba148387d2dbe47149539c8dabccd513065
Date: Fri, 02 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662082853

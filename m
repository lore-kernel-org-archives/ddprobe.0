Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A54F1844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644976584;
	h=To:Subject:From:Message-Id:Date;
	bh=eZfJomIli88YQHrS5T9TsqkMVz6VV8AZ7abZyfS/55I=;
	b=YRxEpEa73qOtqSOk5sErNA4rqKmMDl7mHD4F2fntOUPSUvvTaxXIEa0TfGC9+NnG
	bc1rSiCGCp8I7F2nLevWw07eAe/mYX0qfuQm9B3siccKhA+beNMc1aYO5c6iNSu44Ci
	ufOGmeJuTQlRzzqeC/hIv22vxkF54xG7jcZ5raZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644976584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eZfJomIli88YQHrS5T9TsqkMVz6VV8AZ7abZyfS/55I=;
	b=Nfjh1airhCJ5gJCSE9kI3IBvgYFVlOibu6+GQnHU2PpU9v8jzn4JTfirOFHgaBNu
	3diez5EOzvRsxArjYIgKsXJi3zSSLoXTW8I3icytpFjlWLenC+nGUoA/FmB0pQfLGSs
	oKytwzkJW70YRhCPlA+RqD7lBU7dqyY86T0G8fCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f003eb859-e8b30286-d5e7-4bf9-bbea-cd2fc67e6702-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61cf2ce6c58a3e8703b4e4cba2caa3fa26653817afc3ad49f395052272171f4a
Date: Wed, 16 Feb 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644976584

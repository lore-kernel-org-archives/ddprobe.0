Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C562F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660748453;
	h=To:Subject:From:Message-Id:Date;
	bh=IAYu26rUbHOkHpb/9Eul/Q16yQHke3UW0UItiWG+6Jw=;
	b=EU5HA7PJzc329iQkkA/hzRYvM47defgLOEKY29NY0TRhieH8bHFj2YJFo6xLBgWL
	unVAVuYJKvtoFT+xFp3bz3lb82a9F2szH7/DmNmsm2JTR4w2SQxdfrLz12uIZoEAald
	BQ6lEAD1kNlZ9v6G79LqncFbFAyaWL5Af/p/VrHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660748453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IAYu26rUbHOkHpb/9Eul/Q16yQHke3UW0UItiWG+6Jw=;
	b=TEbvOpNDAG67xNYRCE+wA5tty5yDMLXTSUa1hEKr3eYSj099WsjyX9/gOw+Cf2Fp
	URPw+Cogq+FeL6l7Rb062mXwbHWDShiyIW4HKD2NCxXGTVA7VOJm2zQ5Lv5gEuWFFxI
	mqjCUDcCGwIw3dIasl2UuJmy9EimKzLulYet+UOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac5252fe-1c9463ed-1c28-4b3e-9b39-daa3ed0f51c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eda8593a49fe6004a207c5ed8054d98dadf9bdabd22e18febc8e8c3241a616e0
Date: Wed, 17 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660748452

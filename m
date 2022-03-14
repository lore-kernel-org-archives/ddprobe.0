Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90DD081D
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647217585;
	h=To:Subject:From:Message-Id:Date;
	bh=1xdtaSGv7O9kdvc1IQP7wEm//Ot6Pkf5kn/KFzz9yDw=;
	b=dVUH1HGysB5M54NTXHXP8VSDRha6ODESuv3D8EsqMV7hwNvAMkokui3ip6C6C4Yk
	yFzrfYnJhCem8dQNKhjoCr965AtXv3FR+s2x6QLmMnn3HrncNitC/+ERsB2R+0n3tmj
	5BkDq6YGZ9vk/GwXobuzwoph7wSOcHmuaMyKfPpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647217585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1xdtaSGv7O9kdvc1IQP7wEm//Ot6Pkf5kn/KFzz9yDw=;
	b=fDrMHVEcIo2h2V4QGhXLeB4P6Yem+wJj8NWgggI+IQhuv5WoIjdZbN7UEneL98GK
	kvWLDDM44k+4PmUpfReEPbLEjL/+13xyTt8PDe41wVoq659nAKl2FD9RB5WH8+qgPnT
	HJDixnHLIbfOaaeyLxl3xQt4Fk1KD/MXilN39YJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85d1aac1-abc9c2c7-d28e-4290-a88b-d6f130d40d3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 514876e09184ac5da27750a85c752e93048ff13d62efde602a2ee6a5750b3197
Date: Mon, 14 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647217584

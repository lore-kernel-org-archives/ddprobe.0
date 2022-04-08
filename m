Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26818368
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 01:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649380258;
	h=To:Subject:From:Message-Id:Date;
	bh=OCAjvtZC3FJ7KaUwrkyfumw69nHuIsCtIPWH5LnPk8U=;
	b=JcryWKE4Mo0dxFcwDjuZnBFXq9ikl1w2btWVXreci+0Qmkpqxp4c0TUgO6DD5w/T
	NMMgkvXJP/cYjRDyi6FyEcimFkf4nR6IGI+5WG5AhwIDIKZl3VKFW6KGvVZLQS05aoR
	BsewljrioA5FevxblY7rnviT7SbMN1ew/Ra9fo3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649380258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OCAjvtZC3FJ7KaUwrkyfumw69nHuIsCtIPWH5LnPk8U=;
	b=TqIYLVtYqZZCsWYcNO39f29bjBx58pvzJrL2npUcGmUMhqgnA1R/j1GPqD1U1gzW
	W6LYSib8LyYBkN47Sn+jd84ti5DSdozK8NpmBZegY6t/ORTaUaM6zrfdWL/04wdOL/d
	TKJvPzEVODbqVoBAcZajxjSPk+32XDPF3ed1hqdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018006b9725d-e0bd0503-2d03-47fd-80e6-95e078731d18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6037e0ff9f9c422f34dd88aaa15fb3e78c089815fbfbd683b3515b44209035b6
Date: Fri, 8 Apr 2022 01:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649380258

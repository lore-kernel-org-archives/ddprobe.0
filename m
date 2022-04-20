Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3481FA9
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 23:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650498118;
	h=To:Subject:From:Message-Id:Date;
	bh=X29+hICiJBHbP+A86hFBbqQVHLdwMmR/aySw7yeW6c0=;
	b=LZgAGN7TIUtK0kDXJW+gD9MSN+YQ6COYUMlYfMwGKLc/I5FO18JuQTAgYwW6wrwF
	67EGeFzZH8lYz//z4gSY4wVFF8vAk1t1rnDxDSIbJ5ULGIQOCzqKs5rSa2R5FUM5iwG
	BgA6dHRdCLoWHq10F0JGmdkE4EzC9D+CI77Ne+f0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650498118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X29+hICiJBHbP+A86hFBbqQVHLdwMmR/aySw7yeW6c0=;
	b=VZK8bd0z89P/5sYnMbub9gu18LW7sTV5/19RIDgGrhtQ4tA/MiVCCjzc5Ckjzsnd
	UnaG4cohkh4E2LIa0S9Crpl40eAv35w/zAOcyiyO8HJou3POnuXJVJa3oVgkB8whBdi
	Hnd1EDgJaG5CW0sbpFehC0AziaR8W9g0/A4+spY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180495aa29b-1084bb66-0930-449a-9399-d90f17bb7d11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0facae03ca9f36f3d221a5b6565baf0dad1f4bd1be7ec42f5b175fc86ddd7ace
Date: Wed, 20 Apr 2022 23:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650498118

Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC1D368
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 01:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650157558;
	h=To:Subject:From:Message-Id:Date;
	bh=071G1WkDOVhnb08T2DDTHu5BcHbgAeN+WraInQWPpNI=;
	b=WwAiM6A9g60RY+BF1XIzKAH1FtmwBPjStFtaQL5p5EoPKE7i/sVBlnujvWElliUT
	2WfGQhxmEUjyrK2njs/ePvrv+w+Ob/OAqC+yDZpxbOfZknpMsYSNRdtxtjPgVTgjMbQ
	N03R8bWqgvzDNQF+qXePU1WBLZ+GPJYRu2rxzG4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650157558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=071G1WkDOVhnb08T2DDTHu5BcHbgAeN+WraInQWPpNI=;
	b=kh0YdS7PG9XhOS3ZE/gW07WunxMFfRpclpLA3/zyTjhA8JjcMGMAHtvqlpcbu1d7
	f23WqhvWAy0PL5/AjlZQpLJmA/FGHgWwy0QWN1sD05Zvb0XkvlVBfBRC5HjJO93KKut
	SSXQx386LRYrhG/jXEXciVLzT7AqDXI6X7waWHBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180350e1a40-225c8dd2-065c-4fc1-80ab-b310ae94b18d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3137e96db878e6042ee1e253b6f44e82b7ab82a5a5829aa2d9fc8003d9a7033a
Date: Sun, 17 Apr 2022 01:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650157558

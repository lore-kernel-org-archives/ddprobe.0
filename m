Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48163201
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 22:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650839939;
	h=To:Subject:From:Message-Id:Date;
	bh=bRmQnO8pUA/PFDLWoRwjp4w920HYQZE0Dub/f6xDhvo=;
	b=P1a09fbIfKWVCv1j7mxgS5pOPuZhNsSJ1Bo917zbTSkwgiKREfnTpD0vZS9n6pJ2
	ANaSFPEZ41tihobUMi0hT1kj5LN+VWXwZV1V/izdmgFL165mRT11V4+aldl6ZOaLLhh
	iX4QDU5ZPM4F7cc74zXL/KJLfcRz/461anuqaoFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650839939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bRmQnO8pUA/PFDLWoRwjp4w920HYQZE0Dub/f6xDhvo=;
	b=II8epicmmuRUEPoMMC3ViZiyFRcnRoGjUOzY8mlOVhvoQ2qhjjPaL+UMm3UelAvt
	zMhRd1f0XIlueUokeiq/eQKDyv6LfH5K+KCBHjn9k10QKp94Cds3660b2MGZPIm5T6d
	v/5GitoVCK6L26QruUKQ0TL4r26q0mYgWOzlp0h0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805dba6509-c7d26700-414a-4a72-9bf2-fc1e956c8219-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec65bddb4495520a8101af58cf27ccf7039080d03b15091146b703b6cd9491c2
Date: Sun, 24 Apr 2022 22:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650839938

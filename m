Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C457621
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 04:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649476918;
	h=To:Subject:From:Message-Id:Date;
	bh=xYXDrTR8FmGCZMXbkYFLa1r2TD7M/EVDegBdsl2MoEQ=;
	b=Cqc3zqHFhTrpsQBjDnrhGUSvGjNGxYkIjNkLuMppQ0EwByccJW9M6e9P+/bjLiyh
	2Cmd8f6z09zXG1V6NewEp0WWGJWu0uq7TdyRs/j3+60AYdxh992Kq5J0dXCxGzhEyln
	9ZIN1U2j1abznyqeT2Zu31NkFPmr/g/EphWIsE/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649476918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xYXDrTR8FmGCZMXbkYFLa1r2TD7M/EVDegBdsl2MoEQ=;
	b=Bm/w9CJsJ+PYpBr5dr6/jHlS5a62VsQGPRvt9Il+dwwue9W+wyibfxsfmtzX/CcD
	Es/ifs/8ZEjU6hwfZ/4yalu+qHxPfnGtYlBsKcWEFIaInyn50fP01PkomCm1ayIaJzp
	rqZGzCSOfJMqYwUVzajgHdc7LmFcJlPO6Rr1dTTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800c7c5bf3-d5ab01e1-b0bf-4457-9b20-bf21374a3c77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cae33b9e0ad04534f2a8c7a7c19b0b89635665f8c06f2a8f60a5c4d4e7bd9287
Date: Sat, 9 Apr 2022 04:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649476918

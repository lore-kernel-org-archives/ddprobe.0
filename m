Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB3236F
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647907285;
	h=To:Subject:From:Message-Id:Date;
	bh=QpzTggCWGSBmu/shvJyQRdKSsXmuRUSB10us6QCC9yw=;
	b=O97A7h6B1WMzKdPxSRRFD1tbF6xU/m2+NyBz+Ty0E54sdqlsGKmVgyc3XEqOm1QQ
	Ya3rui5xrEzWvANknz40EdXmbJQ85ybrrfSt85Lw6M0PkN6OCNxlcVbXArL55gYkodH
	w7gdhYvSjZWZLVcyxKZr11Ree4+MNwIH1MQ/kfYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647907285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QpzTggCWGSBmu/shvJyQRdKSsXmuRUSB10us6QCC9yw=;
	b=U08QTc6x5voAGkvSbwg0+QaXlp22/r004WsI9penTEzU0VNQEvRHO7VJnwbylqBE
	y3170PGi08X94zZmrDaXk1iWWvtdq8cO++9yLed5Yr6u6QzIc8I+gqYSxw/rW+kCzU8
	UkKEVdPYPa2nzD+5LhtnUa/xht55mFlr8JGbNuqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faeeda734-4fe3f590-36c0-4cc7-be57-137828cc9ef6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f067c2160cbf3bbccc02c143c8093b2a9cc04191e80dcd6e809903343f0cbeea
Date: Tue, 22 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647907284

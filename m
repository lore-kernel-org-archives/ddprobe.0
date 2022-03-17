Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FDB4292
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647516984;
	h=To:Subject:From:Message-Id:Date;
	bh=RwM4fnjlTx1SqynxwU3vbrufQ4L7NpKsBiyYbgLA25Q=;
	b=FRlfZVGvewcDGfPT9mpHyBDHmkB+R69kkPouoSsN3Uv2wA5WKOdhFI4xjp03xcN4
	hPs7k408OPdq0Edrl0UUjWxPNLbwNxvOdzrIeGEz5JTDiJjPkKJli+nCvz0HB39XCpI
	14Pk+eu2hXcc9zGzYoHVGZvNGYBOeBV/5oknZcuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647516984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RwM4fnjlTx1SqynxwU3vbrufQ4L7NpKsBiyYbgLA25Q=;
	b=H8x/qy6b8wwzy8Y7IPE2x08SKviCNCiol8CQc0LbVxIk2BAwI37pddCVcNpUN0gz
	2FirLYNJEcUbRqt1E9rptpzm4hpTEi7AcH1ZK4/spkHw8NUDxadQZo1luKmDybKf5Vx
	inJD+7TSulOHhWuNHZgXOsKWC8MrbPtAQiVZCwpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97aa25ba-1619def5-ccf7-4449-9ae5-ca3f92462802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d72538b8c02c39d31a24e8060479bf165698d91f2a53007cc646e41ba3c26d40
Date: Thu, 17 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647516984

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C537E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645488385;
	h=To:Subject:From:Message-Id:Date;
	bh=IZERcAD6Z8DnojBFilBP2N9+KHdQjayF9lWtuMNaOpk=;
	b=kCjLWuNn64Qr4JZX4b1CgW1Hz2SfoRk+cGtALiWCwynCGATAP9c0j4hcjUlX1sJN
	36puQZ03GV+ssw6duW/Uj57CaQxB9aCwKCKDrWtPr0Ny8FZcnC/4QxZakBEqSHXVx2O
	airgt/yX++i0cEwqctzCxA0dbOqXceNm3E5MXHo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645488385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IZERcAD6Z8DnojBFilBP2N9+KHdQjayF9lWtuMNaOpk=;
	b=cJqTpkJz/olN08wBh6ors2YxwxbyxKIiVrBMK4ZBnAQFErZ1vAKBFuTc4w0dbRor
	ibH6Id9/Q2KzrD2xBdgfc1ZH1ucvK/2dbZwDv9EVqRh80LirQq80upKsjPn2+BhLouF
	3vPy6+tmJqZlbQFStKYSa8HyUVfLH7093VvaxJMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ec02b20-d0cb2423-2a9b-4daf-bdf6-fb5e698ca120-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 081a233e63080e7cf305f55b0e51644a7bc94ec6993d12b03182d954c485a122
Date: Tue, 22 Feb 2022 00:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645488384

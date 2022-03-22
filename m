Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54FB628
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647945384;
	h=To:Subject:From:Message-Id:Date;
	bh=lgIRrIPbb/8sUo7KdWF4YW7dZqckGmx87b1zBmQW2qQ=;
	b=c/YZRSkjhXKXI1EpdKvGno/Br/6q9HY3EA7+VzXYTduzg8v422r2m+FwrAkea6yl
	Z55+N0zmPkE+mUubw/NFmE8oXUhIdOUpVBGkE0wSTCFXQ6nm+BSRnwMnn9WVOYKcy6x
	qkp7+D221WX9dYaJv3qeoiIRn7HXFuU3yktCBYqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647945384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lgIRrIPbb/8sUo7KdWF4YW7dZqckGmx87b1zBmQW2qQ=;
	b=EahzHevoWld83ES9uMFtkr/qgn5L5cKPYOm50X3AcT05pnN7RyoL8II8swawqiWA
	oUQulZBbt2qKMFojKIN+M/Vo51X7gAYtRASurGXxWpdIuM070nfafqrpo5QmCwXELZI
	r17oAWhHmFRVaQ2KxS7XpacRbZhhdx1BIz6KPfCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb133033e-f27e6c7b-5783-4dc1-80bb-f33d636d4591-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0da9b8a5d62e58492c0e5a8a25d13a5e69dc63e7f961cde73b0a3c642343329
Date: Tue, 22 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647945384

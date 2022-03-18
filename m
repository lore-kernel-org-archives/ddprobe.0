Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BEA15A7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647621085;
	h=To:Subject:From:Message-Id:Date;
	bh=p2scbvOlrcs2N5hzUrgkp0kGnmg68FUEuAaISTJrcYY=;
	b=GeYb82KIgpnYWQ44ze/LOzC4i1OoMHzr6B0XURCxX6u9JDD8aIOJSmT36cfa9ei2
	OQDUrWdkkpcjfG6sCtLq1JNsoJJUaxRLyhf9qXqbVoYRMMKIJ10dhIqsvR0YqTbBhrM
	OoUKYQJ4QoED19kHXOBDK8l30eznfejENw5ge7HM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647621085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p2scbvOlrcs2N5hzUrgkp0kGnmg68FUEuAaISTJrcYY=;
	b=Iq/N6zY7rLGom97+AJVeJoRa99q7yPH49COgxSydAl5EHQtLZ6503Q09PH0xrY3y
	oAZQiiacVgNU3iESJfQfZPwrq0C7SaVIT8/lMc27nKer/mRVgKwoeILe+Cq993C9xz1
	w2CJNJ8G03f4R/6RNQ6YyeqBfF0I8Z4DtiFeWL8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dde96de-f7027b5d-ece9-4da0-a407-070cc696311c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79c6142d6f634a47112c24674381ff6a1aa2a0e94879457f3d1868c01f588add
Date: Fri, 18 Mar 2022 16:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647621084

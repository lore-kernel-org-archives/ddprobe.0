Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6066612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647892585;
	h=To:Subject:From:Message-Id:Date;
	bh=3BmoZqZjgFGNc6DHAuVzC25Kg/PXadmmH90PMTFqR/w=;
	b=bU+V1fGxHxvDkKx4lTxUiiLRM6g1t7K1q0BG+nf7dc4op3w3ZLnw8DbgcS6nDWWu
	q5vovf5f1G/V/RlDjBfUPwKTU/WdA+DuRCwZEzEeIaazUDJSGnWCsgNf33YA9Fyl6fB
	Pfym8VyEqtaDg+gpQTXi1SZZUV29YhP6Z7cxRXM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647892585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3BmoZqZjgFGNc6DHAuVzC25Kg/PXadmmH90PMTFqR/w=;
	b=NZ91n16ysIwNCGiSm29U/0n6AFXhZF/LzAY5wTHnrfmqTwj6YyL3L63glpOPUGvO
	/Ji3pml4XvS3x7jR95fAOzbJScr1ck8u8MX0KyPd8SYjgqtWfti/9k3MZk5/4kgclh4
	eqAiKfMQe+3NZmOalOD7XPV+eWhZtkj88CwyH63U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae0d5911-a559f922-b7c2-417f-8966-de2df8849135-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 962b72481b42b4b0913c6ea82960f47063738c407567a7638ade9a435f5051f3
Date: Mon, 21 Mar 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647892584

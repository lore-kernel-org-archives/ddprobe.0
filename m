Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D512807
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 10:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651834619;
	h=To:Subject:From:Message-Id:Date;
	bh=WBpMBgi5xz/DZidwZvb2on6eY6Y4HlXwSh7Vc8KUlxc=;
	b=mWMh0hNpl9IQ3724lTMzrKQCmCsiiagmygacc+JcciiJJJTy+EQbB+Jz9F+V5EEJ
	+qxIzKcasMFjgmitmhQ6nhtN1rCBID9i7jeGnqpYqMi/VhgWlrm3Rvu9LnT3SOn7H1X
	w3wQFQH2UZZ9tWmhfPat5ZdGaMiGHnUchx41Hlzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651834619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WBpMBgi5xz/DZidwZvb2on6eY6Y4HlXwSh7Vc8KUlxc=;
	b=Lmx1BIuylyRQ6XuDkp14yqcn2vy3HZvBa1TCX3iPor9ZxreaSfxCztsR/xCPi6v7
	bjj8eeKOp6ImQoPlLPM7X9Dw7h2glCMhzJCK6fKM65B19XwXsU21y4sLkQRpzKtv0De
	F6qadZyeuc5JyfkJClD7VC4FpRZGsMwos/r87KWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809904016d-c4f0fbd2-c549-4191-9127-123642f62aed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d484fc7a529413878f0d0752a8825fc57822295e8fb2f90aa92f25ef39283a14
Date: Fri, 6 May 2022 10:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651834618

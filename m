Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA6420EF
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646197584;
	h=To:Subject:From:Message-Id:Date;
	bh=IQ7yWuTehGgHQbDertopASyARz4+PbbAM0Eh5D4jVoA=;
	b=ScZAEnvhsFqSeJ1I0Sbk2UkNph9jh6KLsHIv3gKG1Qo6zsVAm5JqypmO3wYfo9LJ
	E+Fr70XMHyaoAwDiT6jjNMtDjM7BA4ehy23brvoIJuUknpIOIM2zkLma4h2IDcR9b3N
	puWFimoSJrG4qwuXjUWcvgW7wW7G1yXORSM87/aY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646197584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IQ7yWuTehGgHQbDertopASyARz4+PbbAM0Eh5D4jVoA=;
	b=G4fadphwqh5cht4jt2wCGUHejplIH+V5Wr8zfYQNjMfd6zOnytkiQT90FFqik87y
	G5MwYn3F1NfnQebp2YsW1OrOj8aVQl5q5cNCynqJqQM2DrP85+MnO+Acs6bIto8VQ/x
	ygwFLxKVyMPcEHPQFtfXM7yRsxwwXiZH78TVXAyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4905b3a8-bc7dfa9c-a12b-43ee-877b-ede8baed9d75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5553ea98b2bdbc441b4f5cb652654b166c29de6c44e5d4baff11a0d429376b2b
Date: Wed, 2 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646197584

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AD4185B
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 14:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650466018;
	h=To:Subject:From:Message-Id:Date;
	bh=hrNYGvcorIz9L1+8lCekEkaKxk9G2qbda/2/dJ2Kvlw=;
	b=JEWZilrI7MGNFkCp/Ff8oHzqo1cUJNAVk6OWjxD9+ZT7c58tCYKJMrY2crdjJT3y
	r1uM3GNgV0501CF1UyCQUrwnsimqiG3gxRlZV9LhJnYLOoabtNvUEEIIzOEM21MEoCE
	xD9LaPp4ZtU+YFH7wq7/mQVB72ip9HWwrwbBWgU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650466018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hrNYGvcorIz9L1+8lCekEkaKxk9G2qbda/2/dJ2Kvlw=;
	b=D8NZQOcJM13CGMwVA/vvkj7FUvyUz0Vs7MAHRJNWbRKLfVVhEGOdxjUtznFeqLr6
	piOPaCsgFFrV6NtgpRESGXTbpqbOd4QJObD/zQ6RUcSzqRCYtlzou7XIFSKiBO8asRd
	Q6JAWNWLp0wfby3WrJx0cI+dTFuupyCRp9xCMvOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804770d3ea-35f51fba-ca01-45d7-a42c-e8380586e69e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40cc395ec97ec262b7d73e4f20b28247e288ff00d50813a1d09f08fec32e7778
Date: Wed, 20 Apr 2022 14:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650466018

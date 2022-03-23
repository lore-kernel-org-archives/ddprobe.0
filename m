Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BF3ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648008084;
	h=To:Subject:From:Message-Id:Date;
	bh=UTw5bp5vMRMGkPzcnldamXnxlQO5CgVFumgfNGdVZbw=;
	b=cF1X1H9fkYwT+oyf66NcID2Li+Ks6nNdQYhuzN9oXpEQLQUBUiHy4rYXv1gYffHP
	vGyBCM9nJemXWvSxAsnfJ4lFtuwCNVjbQ7ApD/TcMEYoibhlcRmMBVo/harkNeqkIzp
	duNbKCq5+sgFDJo7RXhEmpRWwXy/s/9rm5V/3ydo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648008084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UTw5bp5vMRMGkPzcnldamXnxlQO5CgVFumgfNGdVZbw=;
	b=OErX+vvn+c9UlHQdNg64sDiUYtfss2Wu/T6YuXUERW8wg4R8Pw0ZokphQ4PQNu0U
	B3V/DB+2yATazti2dt8ciSr5umAUx7D4Za/eznatVKQypeUYcnTM6ZqMPaZSoriw+JQ
	xhRkx6rjX6frXnqtAtbmfEHwnPBh9Y6Z6Oi2lJKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4efbcee-3dfcb923-71f9-4060-badf-63c3d0fca99e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d67fc160ad9251137fa0e2ba9d0e00874592d66f73f942cbcaf3daad0a2bf172
Date: Wed, 23 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648008084

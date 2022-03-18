Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D437E48B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647602485;
	h=To:Subject:From:Message-Id:Date;
	bh=QOSr465Nj0UBgiPBSs07w1bAnh+DJK58CSrNeyRrkKc=;
	b=hzjvMzii1G3zbaozfveo6zwWtRPs+jXfudCXaPlqLIv8v2jPN4kYRyaQZV4IPNMl
	KIbUofyxY89Nq1+s0eahyTOgPh4KTAGBLH5GNiKh1E0mcOFVvYZZ/znlmWJ5pJ14NAM
	t7d7S1GEz7KVcGe661eKrqez+VrzK0IB3RhK5pNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647602485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QOSr465Nj0UBgiPBSs07w1bAnh+DJK58CSrNeyRrkKc=;
	b=WOccphB9BtLc7mfASOv5uw/tbaYhRJxd4RZxP63Awg+VXKuIRBS99XF30Q0O9nF1
	xni51GJwfmLYSw2coTlOQIAom3v8bEubaO+1zMEV50w/HgOUAAYc3NXS4hpMC2oQAgn
	NPIzbGnFU6PLIYlHbMmN3kN0n9gJEL+eaIbIxsag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cc2c5fc-82d53f37-6167-454a-8a81-3674b4707dba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02c4300760b5c5be9a1ed2d8a98d32792b79b03ff50849e5fce374f262de2414
Date: Fri, 18 Mar 2022 11:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647602484

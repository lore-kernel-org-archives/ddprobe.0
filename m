Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB211FBC
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656762412;
	h=To:Subject:From:Message-Id:Date;
	bh=vjJVBeoQD7mUGXQeh/qB2pESo5bX9QN+YhVPHSkSZvA=;
	b=ZcQhrBsPm2adDH8dK2mguRhQg2FaU1SK42BGTKNRU8iEFQoJVDMijc/gGyNFv/AT
	77gXwTd9P8u+YrHQxnCkKNutKECCEc1yv0HyAUHIjYtONpsnzdWtuotqx4gqPv87Lna
	N+RvmGS6WcnVOboU48JJWiVJW/0O1tObQpbnsaAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656762412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vjJVBeoQD7mUGXQeh/qB2pESo5bX9QN+YhVPHSkSZvA=;
	b=f3C/n8urWeYOXRy9wedPI3j5zth2Ko2aRF86qu4XOhzMNdk0IEGQY4ug1S+IxCHa
	KhHgKQv6htr+LKJhhKCeIFFI09AOScPGzDGdQwHTdepitGt/paCSuZ9Oln4UTOeTAuZ
	aKPSlKE6rnkxVXPZGCgByJI2UR+UNE8+2JvSEdSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bebc2ce0-f182e38c-6411-43bc-a48d-949b2a8c7647-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35b814757228aee581ddd3bffc86b5a5cd6d39baa85b3ed4e76fb9de0101c8bf
Date: Sat, 2 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656762412

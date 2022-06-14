Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF591FAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 16:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655224379;
	h=To:Subject:From:Message-Id:Date;
	bh=LqgKboz7S5DZseseL5mYxCEfbdq4GTM26XL4ZOjGRK0=;
	b=TVrbxmYqpFhyj7/vIVMNbTUXebjssl52VMemKUndhpwH6WLJUKqaEdA0XtuuOPQ2
	2iRT10DD6l3QhFriq7yE+AyCvVhEg1N/W1dstPypArwlXfp6Ne/TJS1cz3Xec/Zdzp/
	cgq6mVKPxmZVhWcCXi+rdKIEMxVebfch6Ue111Rs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655224379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqgKboz7S5DZseseL5mYxCEfbdq4GTM26XL4ZOjGRK0=;
	b=MAHCme+6JA0TXiLdryxXc2i8X/xlMklAyWW53dsnBVQBqbsYODMycw6qoTajaHFJ
	3Fa+bI46TO4vb2D/Wd0+CjkNu1Tp/4+4YuPQCwWPhknVhxAt4HHYEVkOr84brisOmWt
	lUtqYM82MjZ3cmzLu4pjpOvsGgXTXgwXfHH66SIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181630fa77e-2f02a647-530f-468e-874b-03e52c2c3b21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3c35bf635049a3cd90a4c4f4a348963a232ce2589b08a87d0e0f20914aa5ff0
Date: Tue, 14 Jun 2022 16:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655224379

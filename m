Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446887B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656526612;
	h=To:Subject:From:Message-Id:Date;
	bh=1LxDALjZGqlnce7xTfjdKYYkKFLwFlg2HfzqrTIJ4MA=;
	b=BIf3jp194mcQZ97K/K8vmHTG9By5tEsCOvVBtF96ufhqNrJL2q4qBZWdrXPMP2xX
	Yb4GMkqi1qP09pIKBzm2YF0IAmKpvWL/pU1fdZT1tof0CmgOnUtAQ5Db+g1KqQKh4E5
	AT8n1RxH94ZWcSaLw5dNI993gBgElnWUeCAfjYrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656526612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1LxDALjZGqlnce7xTfjdKYYkKFLwFlg2HfzqrTIJ4MA=;
	b=XGDP2Dy/eKuAng/vZrTnApVueHlnsW+/bO+1zP03D0txD5NOeddZK80syHyuIT45
	BR/ipMhp360+lfl6KORy9szw+e1X5LDUoRj3Nic44SDO0z4inYvfQcabfsmrFq6mSQm
	NeTanvHNMwvMkccaLKpslccIR5ZYq46SzamRPQ4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0ae271e-0773694f-a613-44fa-80c6-825f8a577a1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efd71ed0a2ee002c2d245b3ea29a2e886ecc08407ee580431c3835e8b63ea54d
Date: Wed, 29 Jun 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656526612

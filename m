Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B596290C
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 15:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649865298;
	h=To:Subject:From:Message-Id:Date;
	bh=GGTHOrJ4xgFq/Mp9LJdfL3BC3x1YXN4xOu/bJZTTixc=;
	b=UFS6c9Tc/OUQe+R8k8qJsrXLBfsuTVxepajAej3udSO6f8bzkOUz6DD2ade/RlBV
	LbZ2SgX65LJBoUoAjOhUH6XB9MWuEuj6n52Cd80WRDnwOWmQwXxhfUiF8ZOA5fYNL3z
	UP/z8AKHwxgUhMTAEwXLRAVf4EEVhUl57H1uhK74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649865298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GGTHOrJ4xgFq/Mp9LJdfL3BC3x1YXN4xOu/bJZTTixc=;
	b=M/L9nZZ/1oVLvuhAA2REEESknWxEn4vVO4Wd2qSVgipKpdiQU5KdRy/KG2djVsd2
	+6/nDQlway6rTQqEiKDFX9jC9H6Rch+q1jmmH149Ws+UbPLI8VsJKGKgGA9UyWbn7z4
	w9QKjsvCO0YqW6evsAvjlswgcXRkvm2h45V9oibY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018023a29195-7d34cd0c-3919-457d-a896-32c9c712e18d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e536738ab5bc523619b9268c48b785b6858947ca06767fd2576876943bc20528
Date: Wed, 13 Apr 2022 15:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649865298

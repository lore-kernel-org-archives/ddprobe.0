Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384567B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 13:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651239958;
	h=To:Subject:From:Message-Id:Date;
	bh=VYX1FqCKZSo9aM14tUDKHNhCkssVD8VhV3wAjqKM4dw=;
	b=k8zbvGD7ndwOmcKKhdrO5md/zHzLVkPFv1hdwuIyuJCeHCGo69ESK0vorQLzwJ5y
	/U++dKHxLvYK5A+GVTtUmcCY5PH4MIHv/zRFfhJTHYl3wpXqMbbxAf6ABnVofxpk6+X
	wciHQaTZC2G1KXyghNju7pHqniSYq1tJjUURrxVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651239958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VYX1FqCKZSo9aM14tUDKHNhCkssVD8VhV3wAjqKM4dw=;
	b=agy0s8svmfetL4irP9KNQlcpacaUkE/ewCj2rjyMl8PKd2/Zst38ItYAG1pgYHnr
	CjTBqSetFb6oRDPuk6u9u20fEuz/ihzZ64TkP/d04tRvOCMDe0RXLV2v5wjioXBeggP
	qdqJEBEpobxzLU1Po+iuCfVvnuNo3XgMz31MlZgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180759236e0-badf4f44-6c9e-4620-829a-1c23072dad4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82c9787bb2a08a1a9e0d62dd3aee9821714db19e43781dce26c546aaf41d2e24
Date: Fri, 29 Apr 2022 13:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651239958

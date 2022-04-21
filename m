Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071F51FC0
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 14:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650552718;
	h=To:Subject:From:Message-Id:Date;
	bh=NMfTBmeiUAvUhfoqe6/CgoS4r4jNRyiThfjb86JtLqQ=;
	b=M4PQptejqDQSjfZV2R0M+mG/1YSe8YNs9A+fV6ipwOWEV9c9B94qPK9I6FgIk3rg
	fJNelPBGw5Z/GhI4ciSHJDseLYIIyx2CtXUsqDv4NBhX5te6HP4LtcXE5Bk8mx7m4Mj
	mcv2Jsx9K/DKRF8zySi9k44ustNccBpS9tAfvNsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650552718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NMfTBmeiUAvUhfoqe6/CgoS4r4jNRyiThfjb86JtLqQ=;
	b=fvTQZHip6cRB7Sapsus/ztEamyCUHozIC0i5r9+K85porMVg14SCu+UB6COKAU6/
	BSFw+W5w2vG2QEPh7EPgJ8xM3XGmgT6HJNRmcymG/Mc2EFfdKfA6PTtt1tzoHX3WXhK
	oyYvI6ib9T7da4Jy7sMixRw1RRkFrMO5Vo6ecKSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804c9bc3c4-4f7b1a1d-84f8-45ad-86b4-78e76f8bf0a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d549eea4c3f4126330124e648f677fb65a5382bf33c82c15163c3b1f865140f
Date: Thu, 21 Apr 2022 14:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650552718

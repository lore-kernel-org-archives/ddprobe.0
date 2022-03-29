Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7290033C2
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 23:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648597678;
	h=To:Subject:From:Message-Id:Date;
	bh=r5n3DdojNS1Lx1QQ2V/zwCZFstOu8qdtR/w7Odu5uFU=;
	b=gLZ/Ak2C/0uTBol8loo951MNjAVFT8lVVDH9RefQHTxLnPCoyKsk/pXQMJ621wCW
	LQfEfe0HFCg6xGfl0HRLBpA3TLhJLXccIqHbSywCFZI8aaNJYdO6HStZM9jzAjM385m
	oUwnTAlWkkZ8NbkoainMX0g7bOMnpusDia+64HdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648597678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r5n3DdojNS1Lx1QQ2V/zwCZFstOu8qdtR/w7Odu5uFU=;
	b=RYYupO2WUmGj+L8OV7XzXEUAbVe3XhqhGveFyrytQnIeaS3o3lC5Cju+CXVa41Y+
	uIFiadcy+Y+DucSJQ3/nC7fSYmI7d1SZzMlVNbsFt1TiEje+yGpfeSy7P0AVQVM2cC/
	aNC84mbThkw4qinZiqtbxnDttP4XwJ+AdrDuChTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd81438c7-03d159dd-2e26-484a-bdee-13f2e2a8f04f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 382957184d118a49d8c3fb5fe540b0cb2ebe8c5ebcf85ca61b51f15771d464e7
Date: Tue, 29 Mar 2022 23:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648597678

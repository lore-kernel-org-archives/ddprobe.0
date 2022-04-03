Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC127C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 12:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648987558;
	h=To:Subject:From:Message-Id:Date;
	bh=wHWbo1X+1FMYqj9PxSQ3CjMiizPUYhKoAn+GCAzDb/M=;
	b=jVp1liZrOeRRuSgkazJr6uIEh02EOVLz6FyeXphhEMmEZLRnZAJ/ozqAE9Qsq7UX
	qqENlCAKwOnWOHXNSMi6n/zqW3rm3QTGqnQCFoGo6KFv9P3hQyc0oAdGytRVisZYFQV
	UbbXoEajzTK/LLhBtnaJnRmx1+KPvGgHm5FOnTh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648987558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wHWbo1X+1FMYqj9PxSQ3CjMiizPUYhKoAn+GCAzDb/M=;
	b=IX8iJsDe7sO9VNF9OARHHepGDAXxvq5qEv0sEwMp1AjXJUffwr7+prAl3Xs+CSpd
	e9lVhi/XFidkINrFrP4gqyYA/+q9bDoGD7tWTb1vqa4pAEIJKBameY+IsD+rckfhj6w
	vUKr4DqtHZx/UjzJXZmeWjKPfXx4v2BeXrqGZBSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fef515163-7a3d28e7-9bb0-4a42-9f3f-7f969988ee99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c36104f20964a6ffcac02811ccb8e4ee2d2b6d3f3168e4a3c352adeeb18e1ed0
Date: Sun, 3 Apr 2022 12:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648987558

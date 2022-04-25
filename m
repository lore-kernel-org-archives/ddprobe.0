Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A7D2566
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 20:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650919618;
	h=To:Subject:From:Message-Id:Date;
	bh=B750nKPtR70YX/iQRvydAKZCznstwYNztlbZq1Wzn1g=;
	b=WdZcUlS1lW23FUofmYX2QbKz11BkV44McYiKkDYB5HFBj/SDmP8MT0OEdMexjpZr
	ZLLGc8nClFFUSuVvZjSahQHpmBnrI7yY4PD7wovR6H7WpuvUGZwkP6R4uZKS89D9hYd
	7JswZtZBMdSl8/Zlo28VWD+8H94lfIZ6od8R6RQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650919618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B750nKPtR70YX/iQRvydAKZCznstwYNztlbZq1Wzn1g=;
	b=ANjIr65zBulhQSHO2+hm7w52uezYFMG1ClnhWsh+j1O0TMZUypeF38L81xUreh8+
	e/4OivbkfybOjhlr7Kh0/5EbbRffN4IJF8pllGRA+8i9NIVD3TPYpwTcoQAsYoun/6n
	DN/ZWtbASG5Y5bS51AooAGh2j/E6OPUlO7LDgFh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180627a36ff-3446def4-186e-45ad-b732-bf1040079658-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99fcbb8131bf1ff447eb832d533dd7ece23fae85c3cda253993eac02d076d890
Date: Mon, 25 Apr 2022 20:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650919618

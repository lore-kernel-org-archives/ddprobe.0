Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FC015A3
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 09:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650706318;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7cNKHFLLja46Yqk9Enn++oUqdnhHIhOORvEftMgQHk=;
	b=QIDyv2kOW53KmRCbSs4c7ejSxQObIXpBLj5L3TPv0/bALZ+Kasp3f8b7BJ7HxzIw
	m5gzleP+qI59HQIxotUBX21K26zRFw8holHLYS8PHCgvS124UgGHK2V2kLx5a/krye7
	dF2ToeK5RL6JQXvlKSO3I4CT/CQHnmNSfNF5GjQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650706318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7cNKHFLLja46Yqk9Enn++oUqdnhHIhOORvEftMgQHk=;
	b=hJbKwjOwMY8tUT08pYal0oY7Xx+RKht1izso4hwnxczw3vr7J8pZ5Pl69JFphp1g
	vSlbkE3ceiQ3bdWlnUCAsXKP1z2zFoahpTdBhye/19Bq9iH10vrCTv+tCNmPqtYnG6j
	GtVd2MEomeQWqYJqtahFGSFPJiD1u9KmyR+0ZWNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018055c383cd-13a05612-5936-489c-a42d-15727c98b362-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4558cacffa7938225ede8db289af5702562758cd4a35fa216f8264941c26718
Date: Sat, 23 Apr 2022 09:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650706318

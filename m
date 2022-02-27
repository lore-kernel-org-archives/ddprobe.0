Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682027C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645943184;
	h=To:Subject:From:Message-Id:Date;
	bh=QfAKzQciU0ks5KwA1uU6md7W4zH0hZiL1jg/5BMSqK4=;
	b=boo7Zuy7DvFVgW3HB0j4Ka4DJ5Zae6MjAQEGwYAQU6OfmDT6NY8wdVIYgPS+tzUd
	hico+GrVIW0YIjpupiPXkyF5loKgw3VADYwACSOu9D5q6VK4IFA4gTmfUW7iaci/xDZ
	Hmndk0Bd71Ig7IvVZc7rPCP9Nj3hDrbLvLJNS3V0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645943184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QfAKzQciU0ks5KwA1uU6md7W4zH0hZiL1jg/5BMSqK4=;
	b=bfQfZ9wKKKk3tXHzBj1DUVeYK269GLF9fb4TseWoEy0e5O4cPK/XN/LdLZT7uwUo
	LdoLuWFmHL4gvMwkmqZ0Z6qqtQUK1u/YsjNt5nEWlxjxoWV/+tj6UgcNy7pbnk/4Hbi
	yeQXtEzjIQdbfmDyyQ/miwH2KO0khCE5QyGjsKRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39dbdd9d-5624d278-bfbb-405f-8921-82c0e3375491-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 568aacfd79dce024a648c3fffa18318979705a44b4469ad0f19923e3582b0755
Date: Sun, 27 Feb 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645943184

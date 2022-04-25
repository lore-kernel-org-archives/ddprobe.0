Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9687A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 09:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650880138;
	h=To:Subject:From:Message-Id:Date;
	bh=TqLYd8/dHNxcQc5vHS0bf9KdHX9ORbX5rBINH4RTF1A=;
	b=ZlQQnbW3Svz/s6nKqqqdExHvoNeCO8XWmDN1kYInPtBUHB+dKqOtXViJHtP9OqHX
	dcVXgntqP0uH8ccWr8NP02t5gd9l/p1zvUfl1EynN4ylGB00FFFrVUJZGVRBKyrSorR
	ZNDGZZSbYiwViJq7fLy8p/WArahS2ELQM7KO8wBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650880138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TqLYd8/dHNxcQc5vHS0bf9KdHX9ORbX5rBINH4RTF1A=;
	b=kP0LSmNffazqpYJBzaH6HWqwZh49A4Ogv+ybDbT3sEAGu69/BHt4xl/2JFHVN95D
	rLt8U0hahe7xGVSTsTH4LrF/C67Rxiibilr2XG/osy0dKU3sSayf0PxDo9qa2IhNzQo
	bekb2W7R2scg0WbFpDzZiK30M/YuLW7aAbGLm7wM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180601fcc0b-f9dba14a-a876-4b41-9cdf-e813d86ba343-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b64aaf54fe8f3007c44fba32d93a062e5d70585e23abf3bf5d7b4d009c0c5210
Date: Mon, 25 Apr 2022 09:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650880138

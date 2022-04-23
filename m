Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2206B7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 05:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650691678;
	h=To:Subject:From:Message-Id:Date;
	bh=5zmWZxIzzR9DfLaureR8WlSlTVXg9q4gZguT1kFGOow=;
	b=Zikxzwlrko0mfcMjVuxSEVRYQnyvJAscxDD9g80vZmX3lC/VIi4Dl2kKRSQ6vcP7
	c80gGH14vCCaEiU75kPJFduDFuCgGvK9fXtr7aM7IXdLguYZ7IHumYVUrlm0z/IifUB
	V4JrnrKLjuecw4bKUYRBCW5ul1SJF3HTnq3Dfdhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650691678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5zmWZxIzzR9DfLaureR8WlSlTVXg9q4gZguT1kFGOow=;
	b=O7eQxS3/B2xgGiTyBQSfSHU7d1PkHxZkXwEA4lTAe3AokHpF5qJ9Bd0YTrI6R2Zv
	BMdX7qHfJH0GMcb9rPwxTW0LZDGlnNQqyRmkkPoq+N8Romj3cxeTV3C90TkXvr7Otqs
	Mh+T37L5AaqckR2hU0QFJlvV2kfCXTiCs06lZv4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018054e42050-ec02b0a8-631a-4cd0-91ec-4ea1f4383b35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94006808c9e65aa1226ee80c234aacc42d515e936f6e628cf6cd52b882bd0330
Date: Sat, 23 Apr 2022 05:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650691678

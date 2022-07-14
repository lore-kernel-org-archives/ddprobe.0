Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DA72F44
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657792612;
	h=To:Subject:From:Message-Id:Date;
	bh=pqli8N8gDkupEP5YsgwP4KC3HN3uChvZwMBRQl1LWfk=;
	b=d+Kl0BE+bunifETvssaQSgAJAvnLjgDuC17iR5PIyHAj73jmZ0HEK/O9yoH/j9Yp
	qBoATbMzAqMeREX/JQJ+C0FzgoMFQLEG5g6OX3hy+NimLiK0DtHnBWQIK6em868x6lD
	cAIxqKx4+hP1PRZEFjPLH280zS9KhhpzK1hcLVDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657792612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pqli8N8gDkupEP5YsgwP4KC3HN3uChvZwMBRQl1LWfk=;
	b=FMn2iE5xgNeQySpu286eSX3CT9ivImRwEPbm8Ipyo7NFY9SbyKowPeiQp4rjLn7m
	UfB2sdV2CLTHrxLMwgpXB/6vmgRBampu/gbpv+QCDWsgUwFMZt2iLYxhXPyKMrKBL52
	eL3l5ifXdGpzHY032ckhtE6Z3Q38APKDHdNOeXXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc23c7b8-ae9643a3-21a5-4c5c-8743-229ab73494b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0344a3b3f3ab78ee3cff9a1ace6b389f41f0ffda8e99bafe0b633cacad7b1d6e
Date: Thu, 14 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657792612

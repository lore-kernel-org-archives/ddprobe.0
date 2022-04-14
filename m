Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC8C7B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 08:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649926078;
	h=To:Subject:From:Message-Id:Date;
	bh=1AXaBIVkogaQObF+spCc/0GTTKu5Md4o7tGLxxlJOlQ=;
	b=MJeF72Nr9//9+FKBIaByhAWSzUrDSlkeSAMjegupWraK0gu9aSXOPA3wlrw7j8bo
	EAKwkTO8jvWoyQ1pzzHHk6Mq98Yu/NhRIBI8HoDseuLDAPcatJId5kpvH3guiWOnChV
	FhknCFrSF6q9ocK/XNEUygvGy+94QPXD9mgQMYkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649926078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1AXaBIVkogaQObF+spCc/0GTTKu5Md4o7tGLxxlJOlQ=;
	b=dTayrzpIu2gb/j3hyD9B0nO6NsRN0yMAkOLRTUXjWT3eR/85wzXoiFK9FDKONNQC
	YwtY7v4vxWadGWOB9RRewsV6fQlPhMzk7poTm1Px6UK4z6dfywVhgs1vXlPHR5UQX0u
	4zsFm3FAic6m2k/l+U6nM3Qysg7+u0cO2T2U0UvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802741ff5b-fcbf5ec5-3127-4b3b-8118-9e2cb5db1004-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2398e0688603f9c6205369107838f25cced82a3c5e36844de0f4a97d091599c0
Date: Thu, 14 Apr 2022 08:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649926078

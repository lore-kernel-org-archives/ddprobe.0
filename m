Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057CD2F34
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 19:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653853499;
	h=To:Subject:From:Message-Id:Date;
	bh=av+XOqkwzZJZ/f/XJBWgS6xk1U2sqNkUyWyEJ+cVQZY=;
	b=WdZw0H1KWuMVQct+jJIG1ed2qmTKMUnQTAlXN38zs144uZHXCDmpVkjxxmUncJ4N
	sD4lGTQ4kZWiLy1ZHxjjkPmLUvYx7nuFCOpTBk8XBaplCLinUCW5r8Y6sFzjUa6e2Gl
	2L+PhU8bEbX3Iqr/XnoZxiES8K6Tp1dCP38VS4DQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653853499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=av+XOqkwzZJZ/f/XJBWgS6xk1U2sqNkUyWyEJ+cVQZY=;
	b=JmomL7puaTWtmjb5enSwr18k6422BMDSipRbssc0ade9sJsX7x5XInwS3zDvZ9aD
	1Ceh6GpnwL1OVYNC0ZPffhouxKpK/DkVd+BQ0VJAnysBRCOkZFAA6ce8/D6LfG1Rbzh
	EsHHWRLAE8HrDxTDrryeSqqBPu97RtEUcLj9krfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811159afa7-c708e07a-118e-4aaf-a2a2-ac47dc0351cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d89f476352c58390a323d32cf29fdb7bdf76e3771bcd676956dd7e8a42b7b98
Date: Sun, 29 May 2022 19:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653853499

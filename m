Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187C04C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647620785;
	h=To:Subject:From:Message-Id:Date;
	bh=x5LFeTYQ74upjRKAe+o0079dcbgH38k3q/5FyEs+SUA=;
	b=KzG2qAWfJixltdIcHywjNqvBkQ6Hh8pk8ArPYuNQ9OcXxI2AiG+CNo1QMBRtpFb2
	DzP56JzqcoPBxVwkDITHAlnbgLl94q9mUPhvAVfojgF0g1Bvzl2/oDsDZaBMxwsB7LY
	AN+9p/LTn85caWbZLxQdZa1rj0Gfjg6yvK7tFosk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647620785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x5LFeTYQ74upjRKAe+o0079dcbgH38k3q/5FyEs+SUA=;
	b=iJcAMwFZN++h9iUF/gVkqvsOMradrW11aPO7CNU092rqYmOsTayP0EZ1P7Npe7gk
	fn1k3kqpSrkR8hi7a2EuoKlcN0Ne8FAE4P3rMsxwf9FuS8Uj0oxKXyk0SQQyVj99yc3
	2mIUJN8iua45WhfTSQSkx7FpCjf2Lrl4rYQykmg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dda031a-76fef18a-b23d-403a-8370-156b97b949d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bc51baf5bfa8db7de0a8d8e145e76bf659cb65746201dc4222da7de708cf815
Date: Fri, 18 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647620784

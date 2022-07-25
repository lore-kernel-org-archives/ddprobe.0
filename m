Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151EC63B
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658749012;
	h=To:Subject:From:Message-Id:Date;
	bh=BNupyWtyzaqNN7twSntps0BYOzsDz5+o3I4RO7o5A9U=;
	b=h8C7WV+xdRDiXPmkLhMlI2/hTIwIZ/w8/eE/EEMbXqeIssxJxR5jSkD5FWTiPLeF
	OtGSF5oNQZ7hx6wPHW3s9gVEtJT1TvYLW1uzNh+++cb4hZs9CxEUyaD7ic7pAYC9QjS
	I3gacBJKfKe0gSEF1g3vZQPvCr1xBW25E0lESKe0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658749012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BNupyWtyzaqNN7twSntps0BYOzsDz5+o3I4RO7o5A9U=;
	b=a+HrM60+rDoBKH6tuFB9eRpN0D3lNBaebraZiQFqYmndzO1xZvkVFUi/yP4cU3Fu
	01ysfmGVFlUP7k4pf4+JFjsaPxl//E1Hxw5N2UTWLLqYgs9YpKuCJX4AXGA1Qyc/76j
	gEqaF3dyveCShvz/Xu6a7C04Z/HOk1ZQps/mRMdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235254919-5fa017be-a2e9-4b17-92b5-0482c44f12f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4701d004ba3e15614202a0c9cc4d46c910701b450b644fb737e188fe7ff94fd2
Date: Mon, 25 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658749012

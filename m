Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E31810
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 12:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653396119;
	h=To:Subject:From:Message-Id:Date;
	bh=xaT8xq2Nd8saC42Ou80Z4Jaflm8BS6XTnKFsdDQjZ24=;
	b=Ic5R0Cez63rL0CQASJihRP4lVA1YBanRRTo/iE7oWVX3m0S+duVQTtPdhatfKmq3
	Rj68mOMGMcmM7sMkvU6LU7lALGunrV5xoQAwOHYERnrhVkipzaiiMX8ElE3ozFdL28Q
	t8gZHkVMtQcgvTO+M8se2z+WpLJkRSZhbuJ3EX8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653396119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xaT8xq2Nd8saC42Ou80Z4Jaflm8BS6XTnKFsdDQjZ24=;
	b=bYASAmj46saRjAWd3YdjTpVv1aHvfHmig7qPfC6y0DSHtbkEHUd0wBp3ft1PUAM2
	By6gYF5u6PjYq9sSxrWNoz9kprhM+rbs2tHsGrBMRKZLmifQXL5HKfnDMh2os+qFjOp
	QJGKJzXELfmGc/nt0hKav8gpA0GFBUATtjJgAduQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6169eb0-496d1e03-966f-43be-ade4-a5402bcb97c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32dedbbb3b27066ad7883ce827a291d423f25ad9dc544e7de05c4178336949d0
Date: Tue, 24 May 2022 12:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653396119

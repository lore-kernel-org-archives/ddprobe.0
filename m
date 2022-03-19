Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711CB7A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647657385;
	h=To:Subject:From:Message-Id:Date;
	bh=1SOG3mEQVf+1R19wMa1h1xcwS0QuV7TNB+2dJnrrizA=;
	b=RkcH7P4LjNddq453waa3TNChT0PXUPDu6YMQf4M51wDGyECWsXgkuyK8XvVJcnDJ
	1qXlvo1SxwpcOauJPz+XAi4nMvNXxjVwszsyPQwzfqsROX45tnMNbvPOUe+ZQmCHdSv
	zd1WtSYX8/kwMy8WZA6ISCx20TRIopZFft5ro/cc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647657385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1SOG3mEQVf+1R19wMa1h1xcwS0QuV7TNB+2dJnrrizA=;
	b=R4X8kQw/PbnubboctkYUtoeJE5KAoCBxnhD0jx2oNoSRQgg46QjxDrkDn/kbmiam
	4prXrfBVbvInb3w5dU+Ai72yW1AxRBdvGRTRlgEFRBZO6gV5mevvcTGGRZLpCeXS4el
	YR/ooBH+McEBX54xm1Z5/kx6nhV48RZ5ennV6sik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0087b27-4c4b4c1f-5332-4fc2-ba5c-54a2a231004b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b93e52c5cd93bcafc0bcd4d7d870555aa145b2061f1bf4bf59175ff32da793f
Date: Sat, 19 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647657384

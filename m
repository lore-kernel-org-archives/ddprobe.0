Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460F17C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656094012;
	h=To:Subject:From:Message-Id:Date;
	bh=yRSl1xfJwohFDcxo/vlRT+X9YoLoerwfoyU9dS4Z3Z8=;
	b=f7h3y4QjmEXm10HTQQqsym8kzXxoDLUdbPjzwGyw2UX37bM0MvRo1/AbV+xMc2wf
	3vnxv6gjRm1OvAwCAGih6wVUsg/LDP9n2iaZX6mR+YBtZ3KXNiCodNTfBMSvA1aCfxc
	LS1NHsUukn9f93jweUBbYlndD4FZtWlozrVR77wA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656094012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yRSl1xfJwohFDcxo/vlRT+X9YoLoerwfoyU9dS4Z3Z8=;
	b=DfIBg0HnTsvc0H6zYxUKs3SUzdJplFN3JwLQyckys5Nf69m+LrWXoZx+7rKsn4as
	mZVta0CzOBec3iOnCRmw4rV8CBTNOob8Qb9U0rKqJ3cCnl3UsxE4JJtCSSOjuRNdMNw
	sl3bsbvlvAPSbol/F7F5YQoZ0TIOkBx64AdYmB3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196e533b0-ca8e36fd-bdc9-4d26-b767-a6aaf28fd4e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56c8129fe585708cf7e5b01c68cb4a7e55d047dff27824725ce834f087dd7686
Date: Fri, 24 Jun 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656094012

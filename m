Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6490C4353
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645132584;
	h=To:Subject:From:Message-Id:Date;
	bh=50opAPuOZfCQaL6NYiXQvwIUOQSc2UeEq5hdPWCrNTI=;
	b=Gukqud35hEe1JwIUApOVRQbW67otacFIrMXdh4AqVfl5SOuQKzDxYuZGB0mC7q5+
	56iULGZM7GQ/nFpu51PxzfnXMIcC3b0L7S5l8/rpKwo8gwQIjHUBVsqQJOfyHNNv1xL
	QGUon5Kn31dPVl0YKCl4idsMLuAXSpQ06POHjjT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645132584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=50opAPuOZfCQaL6NYiXQvwIUOQSc2UeEq5hdPWCrNTI=;
	b=SprrEdCk2l85FbwuIGMkHR3MbNrRNyW+uhKABpmAcBcpBOFbjvQKeYQ0NzC+oYwp
	qNZs+CAifyDr+ogu3xjtY7LEoevMTX66l3DpJbJ9YatALaSEWuh1laae+thhx2epNyx
	BK3uD7y7gWaAo3hly8GdaaOn98UpOdtEQ8wt3Bu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f098b1747-2c0dbbf0-042b-4f20-ae8b-33a63b01f0b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1951860a924edc6a80cc429a7577d5208bbf8e2fc51114d1751e4279edb02914
Date: Thu, 17 Feb 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645132584

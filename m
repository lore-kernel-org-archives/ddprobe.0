Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122607F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 13:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651930858;
	h=To:Subject:From:Message-Id:Date;
	bh=uKxLVt/QHLrJ2arZ8iAAE3WCuCCBS6YNW02+M6IdHfA=;
	b=as5LK6hSjTSnSMgk7oLJgRp1WttksGO/8QVhfQMCpEK2TKWTOML/Q6Dvvu++zWFq
	qLKQK/oq2pN0YjocMt0e7p+UJzs0jjzFGweNESkV6TuPto0LWTq/uMfNmcTY36lqX+V
	HDx881QymW4/om+fwV7XsqDQuPPLZ/rDCtQm5Wpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651930858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uKxLVt/QHLrJ2arZ8iAAE3WCuCCBS6YNW02+M6IdHfA=;
	b=S/MLLgfrqax1il8iMDm0HpHUKbyiB1qcM6UTHyn0UA63crXgpnSUxiwJu6YwWyIM
	XUehjDEHGuRWRmvcINdq1wPJhxbfUPkMFEKL8nOyRnN2I+O1nWFd1w6y05wtqBy9Omd
	HQ2Ps8hvXwsjz5wy1Nx8AOQzXkhPyjhDU4QKPFN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809ec08322-f82ca1a4-fa14-4a5e-9ac1-fdf050950b97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39cdfa59f5a7ca3ffe8bec1c9ebb79c965cbb4c51781aa847640c7260e902944
Date: Sat, 7 May 2022 13:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651930858

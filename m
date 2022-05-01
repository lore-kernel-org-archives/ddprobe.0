Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F8523CC
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 07:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651391098;
	h=To:Subject:From:Message-Id:Date;
	bh=oB4bSBHmFVExHbfbPaijuRxqabLRdmCdY+EzwMM5daw=;
	b=k2UBkRepWn3O0UkBfcFq9ouRH/VVQnWHfIgwGfxAWVq6aYnRCcfCD/4DvmlFfzK3
	k/cBmr5h/NSKRrLzBUdWJwMlRVThxtvV9dSpu/aUZ5P1zDRQ+Zj/CRZjxA72YUyZMfZ
	3u1jW54d1BVNMi9/0viecWenrI486xuZeUZrCJug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651391098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oB4bSBHmFVExHbfbPaijuRxqabLRdmCdY+EzwMM5daw=;
	b=ky3fwmXYr6d9YcguKXXs2tY4vmEJAnu17b67q1sr8dmk2smCY936vMjGtkPIvBeK
	3vJLB35TyVjYWM97g5JMB+BWrIjekLb83LXPbBtX7cOjEQ9HlKXxNThSPA61VqeVdV6
	PjkV8gKwNXcKV5IuQ1DfXWx1Nf9VGUuAqa9xGQLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807e946dbe-4e013996-9756-4393-93b9-8558d4b40532-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72824bf51eba11e732b3522ea74cdaa841f1525f5f5341c3e511a7e4ab67565a
Date: Sun, 1 May 2022 07:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651391098

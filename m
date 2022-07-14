Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0AA7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657777612;
	h=To:Subject:From:Message-Id:Date;
	bh=oozg31Qwkkr1ZLUr9FDjOXzdGjay+rwh2uDk8nS4FAI=;
	b=WM/S/idF9xpvPTiOReD+c0cECMhAhbf7QkLOt5p5ku9Pw+5jsvgYgTa56Ds65Ftg
	Z5CzO94jE3bHCowmYH7gmG7YXoxnVdw309bFFfj6qQ4ObgIF6iwXSBP2mH7OtP5mSuU
	Hy3zGD3ZFnTlVQSDsAiDF1NKAKrxLltzvhQ2OkZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657777612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oozg31Qwkkr1ZLUr9FDjOXzdGjay+rwh2uDk8nS4FAI=;
	b=b5LyM70pMdezg9oF0AutBDGr0zFvzriftzsvhQqIKDRhvfx/4UyLE4abuUM3KHrP
	eEonFz8Yq3LO4c265fGHQCt9LgNkhqrb9VVv7QsW2vpRezlzKoO9oGiM9eD+9s7YvoG
	41TNS4F2VkruUjRyIWd9nZBFQ8dCupXQ2xEmtOPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb3ee631-e76ddd9c-ad27-4404-a56f-870048097eb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 244339a17fd6efd63a8b14070fecca4aef7e42aaff19fdfce2cad71ac017bcc1
Date: Thu, 14 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657777612

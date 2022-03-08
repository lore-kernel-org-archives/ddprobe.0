Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F51A4AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 18:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646763085;
	h=To:Subject:From:Message-Id:Date;
	bh=oLrTNvrFTVWJUyY6nNVrLjirSoewtIDjDqdrtBE6T78=;
	b=RQ0Kfga5sZwvv4u8kBP2zeq1NIdcSJgYSixxY9U2C9pKCEXf3dghZQw0g6B/u5Ff
	0sb2pgBeDSlLXdMjE9hUi+y0qw4NsvHXNuPe6O6ECJyQ1y3PMQ6dWXiaUifIHiMVMjd
	8Xv5fd7zN64wE71POVtDBUPUwbcHqhZSmTEeD6Yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646763085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oLrTNvrFTVWJUyY6nNVrLjirSoewtIDjDqdrtBE6T78=;
	b=R48YP3LqFO5tXKmXbHVbiP6rlbAJTmYwh9CbnLEP2tuxHeJL4vD2sEu7PsjZnJD9
	pxFc6wBTL0FqFpI1hmpUdkxqOuKN55E9Qz72YGIR7f340MkeKRq59KvC/sZUwxLLAsj
	7rZyyrRtjekvQTlTsgqvKxT+HEEg8DB8mmolugIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6aba8c05-b98fc1bb-6bd9-4f32-9fca-de6bf2dcb515-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: deaade327d3f8864a157f5c59fb33e4b8c2acef46cd815a3370b26de856ae211
Date: Tue, 8 Mar 2022 18:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646763084

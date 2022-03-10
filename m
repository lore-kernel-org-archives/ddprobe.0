Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7980A7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646896884;
	h=To:Subject:From:Message-Id:Date;
	bh=gRSZmBnR5Ec4lVxHsWwwWmaFlNnmXDaE0fi1zOV7b8M=;
	b=foD/8kq0a/ZSe/xbqzs0VXxyOM3wN/fBwO77D06nxteg1mv4VOCInB+EOzHRzG57
	almAbmlWW6g3Qhenb4qry/jgBZpYPoQolZBGeZR4+Wp2mgczdITFgkK8vNy//F3upoR
	HkpJDB9z70tzr3TAn5JAi0BxbxDFgaS1SI6Yu4Ns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646896884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gRSZmBnR5Ec4lVxHsWwwWmaFlNnmXDaE0fi1zOV7b8M=;
	b=VhEfUhZ7NiorGhKIqCd8NcQSCXm5D2ASQ1EHvUnnTpiKwI1ftdtamr0NbYLIm0Kx
	SF9ykxef1zbYeED3f6WLT/gm07harDxb1HnW45rleOwdWQuliFNU9LvfnxX9QP7NbqE
	8DpY/v8Lp44qwTpjaZgMi8XbYfoBY5GSNnhxIhgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72b42c13-c9658dfa-fe1c-4113-84e8-4d4b5620eac7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50c81d36905ba95e18785bc7a03d294ab08e1aeea01a7dab85f685c15378c4df
Date: Thu, 10 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646896884

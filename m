Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9057A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645660285;
	h=To:Subject:From:Message-Id:Date;
	bh=ALdUDr5qSG4ccBgUvAkLGtUTYkg1M1wTaRmP/eCWc9w=;
	b=atdd/uDuYZzhnn7RcscdUnLDEh7DiyCYh691q6fYe8YdJgA5dPY8NDuFGhts86hN
	nOfzlu757DNQkFnmhzxKgUO9silWKkiUdDCti2Ay2/Gu/GGmw4tOT+BlfnZa7dxTdnu
	6gOTs8+1Kn5ZCvr/9S2hK9NGDsO17zX/QvzcQTiI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645660285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ALdUDr5qSG4ccBgUvAkLGtUTYkg1M1wTaRmP/eCWc9w=;
	b=krT7P6vps4rs+AaebBZ/l/JMuhU+tdSOUINlRcz0Lp7JiosdFCouYZHJliUuOa+f
	FIuSmuyRU0/NYPX9ygkBgijrxCw6ZRIXX6iYVz4iy0u86C03cigvw9y/9p8whi27Ksh
	+9F3Jm7pltIpPj8UEk+dHxRFEQbbsXaW+T7fGFAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28ff2832-c6c4f301-af71-47df-af78-f6be43259c72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f66c8ab322f1c801c3dd2e165f5941fcbd69ff78b21fb93c0bae43b3fdbade3
Date: Wed, 23 Feb 2022 23:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645660284

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9BD33D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656424612;
	h=To:Subject:From:Message-Id:Date;
	bh=eFOvh4y+CeoKphHMEg9JNKufL2UnwhcLKvr/n+9mGbg=;
	b=CZLXuGW0c9dVj5XPb5thoZTdCXv43K+PmQuCaDKURBZcu8pDU6fS4g7c5ZgUPpaW
	iK7GL7PkR4lxCQbWhpPuXoXeC/IHX2a52w9Nmc2+S0NShfU+6AjpADi9a6zEUfQCfKp
	UDYWqE98gmEfaAmnKcCcyJLSf4IiZ/RRJE7zAw78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656424612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eFOvh4y+CeoKphHMEg9JNKufL2UnwhcLKvr/n+9mGbg=;
	b=EOocgkjvBA/Ha+b5YUI+A8PrXH1PSHjgh02u4M5+ghcr9QHKqZ5JaPIOKZTu6VHY
	irWwVbDJMuoFh2+48tfFcrfovthn7wDgzsaV23eTCeBdej6sQXA2iKU/JvRXIdBeylA
	Joxi4H7vy/rg5rLPT3b77GVFTyrXxvk59dzqprOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa99c1ed-bdc68c74-471f-4e80-b98f-df52ffdda78b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72e22d2b0b874cc9c8cbe2585187f6cc03e42ea391aab6c1a3e466af9692c404
Date: Tue, 28 Jun 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656424612

Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B6F7C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 07:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650871438;
	h=To:Subject:From:Message-Id:Date;
	bh=sEWEv7JGL3mHu9PNcFtYp6jQN3VrkxJUVdb91TtXBLQ=;
	b=VEDp3dvSsLGUAyzIm71izAez8Ugwiijjk15bi9MgQ0YsIBX1582fwn8BEQxTXXVA
	JEejqx6oL9ry4fNjbP34aY1gq6GkAT8nwECEow5a12Ch7qE6UfJ6Ir8a6I8+7snQcKU
	+mpFKqqh8Vr2RBeBA6l1xtjlzKmeUcKY1ZjimXzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650871438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sEWEv7JGL3mHu9PNcFtYp6jQN3VrkxJUVdb91TtXBLQ=;
	b=k3YXoB7TxdaeUeY6bTUr4+N+SZzSdJjfPRXBFRT2diZPRzuC/7kwxLzEmulGuKzx
	Jx6gEkpUfzK7QyNF1fJna71ca4IJUTIQdkWep8TzrnEaAAf11zkN6x+indOgSqkQ+1C
	rn/NJVO8OmaQo60obg2RNakYkhQ+OIdpvjDzibV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f9b0bec-271d2975-d511-42d2-9d44-e06e01dc2b06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7213fd8fe70ab2b03f09dd6571bbfca00dac6845338d6d6fdb0cbdad8f91982
Date: Mon, 25 Apr 2022 07:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650871438

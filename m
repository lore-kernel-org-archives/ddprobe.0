Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F4D2567
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 17:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650217678;
	h=To:Subject:From:Message-Id:Date;
	bh=jZIBd9s57COHxx3CtBCY3OkOV5gUixN4c9OEL8A0fDs=;
	b=JrHT4TbQcyevEMV/3HOfYDYSUDFVqYw2z5TnET3KKUirJQ19hQxUl8vygT17hn3K
	+ZqMGYondy2AbW83fwGr/ertj+IM2zYFN3Ep9wwee2ODeaFBuvU7xHD3kQ3Uh8ZSF0c
	RLrWuAwEeA4jZ/THoJHOpZaage3IIwhUVLr7FZOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650217678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jZIBd9s57COHxx3CtBCY3OkOV5gUixN4c9OEL8A0fDs=;
	b=j2UU0Xza1wU+43I+1OzuXyh6gZQMKxrBKnAc7bRFi+VuFevnJjM+1fUO+i3nTeLn
	fSlt0paJHtjncqOHDpInJpEFc5rCyjuBjBpAH0NbsZpWx3GQw4z5BNLx6ir8elidslR
	WB5jLTPVQBpe/ZoloB9+GR/jsSr8io3Ajg0Uc/VE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018038a375aa-06571603-cc17-4451-ac04-8cd2dffe51f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4a902ab08ff719fbc4894f20c6eea3d11602b1a3c120d6cd2b54de42e296d38
Date: Sun, 17 Apr 2022 17:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650217678

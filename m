Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA5A53BC
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658434612;
	h=To:Subject:From:Message-Id:Date;
	bh=tYVpqxCrqAu3R0ULG5ZMs7zL3VHXFcFYRekFzFmD4mA=;
	b=ExLqBJgctNJ646Ls2zXvnceujcldFQ2LteNGMjMKIzP+rzcjuu6asYOjSWXXMkR5
	wPfPHjQ6Fvl/6fcoyvMMvuHNO3aUVhyIfW2Q60IEiUWQdQ7rT5XMaxh/5DQOXHR6D8k
	aFmGH8NqNmFD7ve4a4lgk7Jh09RcGbocPBlYumgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658434612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tYVpqxCrqAu3R0ULG5ZMs7zL3VHXFcFYRekFzFmD4mA=;
	b=eyrSguPt/n8tgq9/fLzicWUOc36HUy8fFJI36R7Yh3QKlrUHZ9tlqvXT1UjyXdv8
	1uxVXTwLtOxjK00GnZ6iGo/4xbm8Lea42pMQ6Vwn2S9W+lCK9V11BeYni1/LA08Pkt4
	kyUxt53A4iZ3hcmN+rNe0tSGF7+nZ+v5rHz7Oma4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822267ec9f-a2ca4525-0143-4484-bf72-77c5edbdc522-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85e46a40dcb9584fcb960dd8fe327a25cd2c5081c9026500796b83783fda11a2
Date: Thu, 21 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658434612

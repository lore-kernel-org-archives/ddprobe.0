Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53E97B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 07:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655536259;
	h=To:Subject:From:Message-Id:Date;
	bh=PQphzsMr8W5s+4nF+/Dp+qnjRLGYTR9FFLQ/Yg0f+fg=;
	b=bwPeEdcsIGSzU0t537PebKz7g3cpjoztN05H7N3vIsj+XVkcryrLi2XPdvXJMC7x
	Kg1aZ10OKkRNBz6FMI6GyyMjXdw3KtBWjBfaKCkIUy4/kgbG8IIXFyEd7CZojsFvz/R
	KDaG6i3AsrIiSYAMqOu5R254swiqQckiIIePV/M8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655536259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PQphzsMr8W5s+4nF+/Dp+qnjRLGYTR9FFLQ/Yg0f+fg=;
	b=i4UPNf3rJ2v2eiknZMFpXjrDp8hHvUZ8oYuAXcZN4NbBw8cZIB+ChX52zrtVaWSk
	UG8kIccigM7T0rDO/atyg1xOb4dmBKNhhpWl8mHeiWVW72YIoSa+wj3CKMAvDp73DBn
	OY0/mPnlso6xOYUq4yZafRxYhFDU3tsSijwUOq2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175a6909b-9b804e03-7402-4ba4-aa14-0df401382026-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d6940eb4bba378eb53419cc2d7207829d90444cb9d057af59707f06900ebad2
Date: Sat, 18 Jun 2022 07:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655536259

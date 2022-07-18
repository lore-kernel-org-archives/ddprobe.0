Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830A3EA6
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658136412;
	h=To:Subject:From:Message-Id:Date;
	bh=ns9Hctt/aUS1rNIKkypC/VtRuHEljMCzTRESiHft6e4=;
	b=iARZJ22uS/xj/ET0q/7QtGHhVABT/oBAKEIbbEsKWU6Rvo7uM7FM7VW1GWw+mxls
	wPVwZToXL9M9xiJ00ujC9Lrc75fYjSJgIMLx6IlAyJWM03iTtvqreeEK5Zeoe2nIvjP
	pxTyTGz6IOnj5NF9UpYUVqiWkoagi4QB4bck7jyk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658136412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ns9Hctt/aUS1rNIKkypC/VtRuHEljMCzTRESiHft6e4=;
	b=LMxhDNVbiBrj0kQej39fCJz68S2xBNfShTcfWAVO+q3qZ4IhWp3wiECeH4+2z6E/
	Slg78nu+H3TnEgBdjIv4BXd4+3mClt6piAqfSGXuda4zyTIg1COmXrc+ndfS+x4e+SK
	ywvLoTcjcHrPcaeit/b5FN4r0ESR9xnBU86aWDEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210a1c0b8-c04e95a9-1f94-4690-8139-e6c12da7ac2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f08e32848bf852909c512e83a110598530eb5c83a26389913f1543cb63a4d82
Date: Mon, 18 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658136412

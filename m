Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19341FDD
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 20:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652905799;
	h=To:Subject:From:Message-Id:Date;
	bh=RQqnPSWwISmitkdnYUyIYQB5HPnfBtgqsDu+3upVO3I=;
	b=bxGTTXZ5EQT9LiDFuqdLKeiK9k/RMvY+nP5SJsyC95pT8YFZcFkHARlIn3MX06Rp
	oRNUZ6/w3NklCxLD61ZufDq70bzWA/Um+x8jsewOKMirTwSI4eKt2cjSnUEydwp83Sj
	4kMyParhu9sv7jkbVggcAIQR82XacEn+1vFCtIMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652905799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RQqnPSWwISmitkdnYUyIYQB5HPnfBtgqsDu+3upVO3I=;
	b=CAJxlUDWF8lh/3qdNZCs2p8o6GBXaLRenhytvTYXZ70YhDluWRO0/tQvZ25U0Wok
	iL2EJo3194K/hXPGgBhEGZADBI9ZXva5NYvgkQkbfvsJfKRparaDq9zFAuIXY701W70
	Ow85k8H6N65pGLjIafGwesSG0uPloBVTJ4HWgRn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d8dcee8b-3d553043-c9b3-42ed-8377-24dec683d993-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1294f0d56ae525558caea0dccec404af03b3699c18dfeec6f7dff34379dc438
Date: Wed, 18 May 2022 20:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652905799

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B991377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661086252;
	h=To:Subject:From:Message-Id:Date;
	bh=tRLSjHaKfQ5y+KxLQxTjV9CqSVkz021OlMRNxyhzneI=;
	b=Vm1/uQBzSJAUysOyin4fTMaCi+E33vqddIZ2w5hrnmVDVGOgNtqKacvYVVdK1TUv
	dFXencQGgdfcPbfCJEoTbiCKmX/ALXuLDZ3gLFr5nDEw/eIS3/Onoq/2JfQkJhGa1/Z
	cUK5muzKDMx6ZsmRoN4fU0YNIDflx14MLai42sww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661086252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tRLSjHaKfQ5y+KxLQxTjV9CqSVkz021OlMRNxyhzneI=;
	b=ErtwjQKRUPKntwhIi6QHsJZbRYxM6pN+0/JwJXHo87f8icLBzoz+xPx1+Gatohmk
	aEmyQZ2cy4uPuTDODHA1ni3mTQ9Gep/wAiS3flCFGYB1NS3kineVihcMopi4zIB2q6e
	Y7RF6qEH7bRxJufHAr3vp3gvOdCuHohhorKDAK1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c074be14-6096e27d-c077-46a3-9e19-89ad15463aae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b3e0e2c76d6785e98adb29fb7de3a71b8d0b2c2cf6506c4fc0431d1ca97dd3d
Date: Sun, 21 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661086252

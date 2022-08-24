Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9BB7E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661322652;
	h=To:Subject:From:Message-Id:Date;
	bh=FQdO7s84OgzmOQSQyo4kGrgM1ySkyd1Pa5pkwanoJYA=;
	b=ZE63kUlwB3DOSRYOF65/4Zy+NhB9lUOlMour3MrAfDfLwAQhK7odP0WLvC+liXtP
	VVLQ5EFGyFhIWCZIdjvQ0MYlFVa55KZqfx4gz+gEIW/od6SYPEfJaWGWIsODLGIlS2T
	fKD4fR1VWZgiZtzd8bvJ80lOu2f3D1fJKb9rvRS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661322652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FQdO7s84OgzmOQSQyo4kGrgM1ySkyd1Pa5pkwanoJYA=;
	b=b9NftuobO4fTP70vJRZz3LvZYoVG29Q/z7qdhFj7GKgvljI8LWG7E8vOtBfcOBjU
	/NTMn/Ps1GorQ6KVCTxOvgKBGursfVNv8zs88pt33SfUe/UILlQva3SUN1evErsc8Rj
	Itf/p1WwcTFLtunvHAxpmbFlUyYfTnItt6qfhTXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce8bebae-fa8b8d29-aec1-4467-82ed-b04c4e5ea3ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7224109e93574090bf654ad6bb65245926748bba61a80ff55fc439f0e667559a
Date: Wed, 24 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661322652

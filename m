Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5626C1377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661089852;
	h=To:Subject:From:Message-Id:Date;
	bh=dm+DVg5T46YfGA8a8j7Bb3yxXZ2/vsQPItyZQnrcO8E=;
	b=Yxa6zWJ95EGuwboRuwqEXy16CK98pjwaDDmJ/SwSLwQ2wSSgVYOSIFe/vFKUuWTI
	hycYar3nzOPGY2fPgMfsEMgvYMOMei+xZqm3Q5lY+GYwcIZHZgFMAKHStZSQtpJ0plP
	gVPYHSScNyN8yPJeuCM9dz67E3lsiWfZ69OumNf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661089852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dm+DVg5T46YfGA8a8j7Bb3yxXZ2/vsQPItyZQnrcO8E=;
	b=S2lXuWCrH4evxNPtOYUDa41iS9ykN3GcMOfQqr1R8xYTg0WHFerZ2oOjIloOgSIt
	rCggWL8JA8+Orby1LSoBzes8EXNG+NK/+AwxVzDwIiu9VNzWF+C6I23Fubp5z3VMLUf
	z/1aVLcup715jKvb2E25/ckFdV2njkvmYzKa2lIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0abacb6-b2ae1b5b-cbb3-459c-9bfb-02c46f52e03c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea329ec6f03d23f484ee747cffa353ca865e259c7b6a4fbc7d27b6dad03ebdc8
Date: Sun, 21 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661089852

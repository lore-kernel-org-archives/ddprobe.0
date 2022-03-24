Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276D21B93
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 09:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648114438;
	h=To:Subject:From:Message-Id:Date;
	bh=M8j+jPvPGMVz9VY/l4R09Zx9mEQcoVFerbnDqZ9AaLU=;
	b=TG3hsy2R/s9pOIvL8XowBYlMbxVqUQtjFI8wyYpDr3zzFlc0ed66bKlHFYyjmkL8
	zf7EAeCzSb39WUyaW9rNWZH6Eu3vTCDuXfFTrdz9WXab95cvYImEFoaUwSXrO9wbf3e
	GrKCnBE6ZH6Mjr9c42Xxqb+nTHuIO5tkc3DBYi7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648114438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M8j+jPvPGMVz9VY/l4R09Zx9mEQcoVFerbnDqZ9AaLU=;
	b=A3m8Ap1WlqMGn9L++cvvBg7gu87vpupcoBWD8nYi0duYKPL952HxB2iVvts/PNtC
	4AnNQ0ZpyW6cgtox+I1EqUQDxgS7b3mthGjABkW8eqtJtLaDnoS0A9XaikFZZmGCgwS
	fWTMwMSN3PDfFILAhTe3rufYW8fy9Ms/JU2RfFHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb469091-a970aa39-ebc0-47b8-b539-2e14fac7428f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbcf5b94462dcee7b94263826b0d1aa77742533bc17c4a0c7a994abd786997e7
Date: Thu, 24 Mar 2022 09:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648114438

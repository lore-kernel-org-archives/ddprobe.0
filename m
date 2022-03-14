Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F021855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647255684;
	h=To:Subject:From:Message-Id:Date;
	bh=NbK+jy72y52NLB+yLum3rD4S5xjJDK74F8c+AdDOakE=;
	b=MyTFlQg3S+kWG9e0xjghIKhvYWWHb1Pf+BWVE2fYjIMy1ODaP1QrmVzUxzPY3w86
	Kx8iflDj2fB4vdtaD4yfescBQdXOz90A3NJYvtSBGlDHxn455SoxYzCtnJJm82aBdnO
	Gemt7u4W7hf0ePuqPxECJr5lk82GEsTYje11q3qY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647255684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NbK+jy72y52NLB+yLum3rD4S5xjJDK74F8c+AdDOakE=;
	b=cIFrnYdwlFAKGQKCUQnr+qom1pMuveBAnSKQkGpKs/zLjPz3UH70AQh97QLEZFly
	jgSgcxHb8vdtIxs7b374YEt6rX+Mx/yvzzcP6mEyhDHrI8QzX1ps1CbjRcUetk/BjNQ
	7aX/r9YjK3rPUVykWpPeWqQNfcMBeFwxYC9K55tU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88170687-92f0043b-5d21-4f2e-be5f-769e3f863501-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7e1f3e17f4646a3710bc6535cd4aa8810abf66983ffff9f59f3479fa1fe6b9e
Date: Mon, 14 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647255684

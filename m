Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007B020F7
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 05:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651643398;
	h=To:Subject:From:Message-Id:Date;
	bh=8ZRN/ixYRPydvuHYc2Xi5xKpO4qOAKAy2T1Dc6BKXwQ=;
	b=Fh1KhMt61ZzC3bfz0kQbWhHCxyzkb8TAdGNDxoBP+KVFJMClAOwXg2FhPkBg2Zrm
	RHVNKaHIwzsJnnyGyn0JMIKb3n1xQNGra0iVER3Mop4OX9IdK5UxGBOa57oA8SYgqdi
	TVe1yAgj1o1iIQmnvyI3glzEkUR+cNPKqKARdkA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651643398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ZRN/ixYRPydvuHYc2Xi5xKpO4qOAKAy2T1Dc6BKXwQ=;
	b=UBPSsyE3tOWWOdK/91jH3CwpkszOE8JjDqFqeEo6NQsRbPSAhF2pIWDBKLmidgmJ
	hKQU2EzuWsZiD33P94lQvXijjJK3nkfMgPbrmmFpQf15Y69cgBFsXnLzURw7x9XOZ12
	ll8cdwUFGzLJvwWhKZNrzdo6TnlY2Xt2Xye+Yu9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808d9e3863-5a949766-c743-49db-a53a-b7b2750ef716-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0331a9bc4ba20157f70f1617bff6d79da923a57f1dddc04a4b14ac0feac753cd
Date: Wed, 4 May 2022 05:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651643398

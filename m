Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6494B7C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 13:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650892378;
	h=To:Subject:From:Message-Id:Date;
	bh=MIK7JbpZeeZ3n1q8Vl8FU9lJbExaPhgcp4CPGkfQ+8c=;
	b=HANxxGWiQgXSh1NqY8POM3s1pHSJRkMO1O5ivwga74Wln8C4XOJeYVl23vFOKl6F
	F8qd9AUuicGba8q0g5jPKfZ9Skg//d5dCcvJxQ0sb6Qz1vhE9fzQsDpbS+bz6mkpf76
	UVd51YGr2B/vaUN4zp8TNwOOGMg+H7y7w51MR+88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650892378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MIK7JbpZeeZ3n1q8Vl8FU9lJbExaPhgcp4CPGkfQ+8c=;
	b=KxHGgoCo0x+Wl1t3qJdld5hk1zrXQyq1tD1lON97n0Xzx3MOzF5DUQQAQ0gQFBXl
	os7WSQ/kDxGmnqcinONCelx6vXVYkOHDb2VNJ/Jj2mbruDJASLRh8ssODGDIFkJOUsY
	TVFt6E9ZiRjc+M0y+M7T/T7SwMzPdKdLZx4ha22k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060da90c1-c28e4851-ec35-420c-abbf-d5c2f630fdbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7dd675205016a4d9c74102b51845c801218595e401789e21e566b0e48cd7834
Date: Mon, 25 Apr 2022 13:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650892378

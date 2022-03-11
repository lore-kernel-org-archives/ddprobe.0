Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ECB7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646957784;
	h=To:Subject:From:Message-Id:Date;
	bh=DZyFhIqWnIvBNHQstxuHZMyzS8YJgppUcwg95HFVnrI=;
	b=PHPcRHDLov8FH2yoEvJNLi8JgpFtu9gs4aQbrW7wnHr4heskOc7Ng/nc8xGhwiIu
	5aLgyGHUio1/uiTA/INq8D8ywviRqOb9CdBVAjha5oJ+/wFAYMOfDqsMRXCizUPJR5b
	aS6ASPzC13ia0TMN4N/AJgX2pAGSjXywURge9V3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646957784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DZyFhIqWnIvBNHQstxuHZMyzS8YJgppUcwg95HFVnrI=;
	b=LuFfEX0AnybZxdPF7YwbsiVUoCUaNvBzR8K3CvTTwA9qeVMG0hDWksiPP1NLt04k
	yjRhHZbdmqJ1+8KUOhbh+0hfrUJi09C12JNnuYMEk8wkU+VN3pxdV0nYcjnmMgWnkh3
	OsQqzZJk3UuiSZyUch1MDfW44nXOtXnRvAYXEfYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76556e8a-b3c54354-b608-4718-afd6-8f2e0bc5cc53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb4a677b8c2bd92ffa6f156449d55f5641d57ad1fc9876936de308ffa573d1a8
Date: Fri, 11 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646957784

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B87538F8
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647449784;
	h=To:Subject:From:Message-Id:Date;
	bh=wbrONWqClYdvdSx3CbJUU9w23a4XBH8zXfioCEV46MY=;
	b=In4BMh3AmiZJYqVz6Umsp+g1Tmvq+61RCBM34D9wRrzwqWOS9My8ZWCYBjaDEgHg
	fpbkjNOKaO+1V1CJ6uH5L4ypN2JNgprQxt7Ob1uENoiEwF31az2oXpt5UsbgVfVvjl4
	hu06d/tykDfIzb6C0SAAOU4hn8dSvWDXnZnvs2ZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647449784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wbrONWqClYdvdSx3CbJUU9w23a4XBH8zXfioCEV46MY=;
	b=I/nWr0U2RUoJHkGQ5vbcVsf2ypBoXgCq8z2wx22wWo/0VqUXnAnU26USSRH1XNMV
	mmJIqtNc3tOBsTopNYV468gD8zIDDn52FW10EmA5vfkykyvPXEcC+jqH8fiXlrxI3XA
	bs9U7+MjzKdBBg37197YcXFkEV4J3eN/tUKb8rEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93a8c1bc-f9932f2f-6f82-4e46-94db-54a1601a76a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fab20ca4a0a874d5e05420046b98851a1f8b6ca1fa9f75d54bbcf38bfd1b9a5c
Date: Wed, 16 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647449784

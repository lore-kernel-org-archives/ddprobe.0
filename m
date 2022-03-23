Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00D2A3C
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648039284;
	h=To:Subject:From:Message-Id:Date;
	bh=6jDqkhXn3oXbJr3OjjKV7yMIP17+k5M0LXbaw4A2EGA=;
	b=V55kGmOqgMVp6WHCIoNlTTZiK3Yjs+d6VjL/emKATjJ5YWdQg+o79yf4vRenyjIU
	vP4D80IwlpuMDN3BR0qy4R9pfM7lq23j23NJdWiuST0zCYkzdOl7KYmUy4YwYUYr49M
	2cJ5n9DcjaWFR153x4ER+/2jYJN8GsErcWW148WY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648039284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jDqkhXn3oXbJr3OjjKV7yMIP17+k5M0LXbaw4A2EGA=;
	b=MWiYAghmg4QNHEMGd5i3KlD5CTgjs2d46WVV65eEBHMXJjmUmUYM0PjFd9P6IUY0
	MGGUO7L00C60jx52Anjfb1FvHkkdXXTippAroJSSL/jgnc1D3ejpHwy3YaL7bD5M1du
	ekuV8dRftfu8vQ1urIyNgCoXjEv28UEglO7SxdHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6cbcfe5-57f73bc0-8e2d-41ee-8ae1-6bb043d1987b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dd36c4e63e6b35c8463cce8f3be276d691292fd578bb0ff8850fbfe203fff2e
Date: Wed, 23 Mar 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648039284

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F38B429E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646352085;
	h=To:Subject:From:Message-Id:Date;
	bh=7TW7lFZ2BDIWsSCzsTySsicC/pX+oPAne/9vp65sMC8=;
	b=den5mFqN+/Y82CaLOlldesv2/EXVmZ7Aw0vlc99JZSfjIOrC7llRUbCxxLwSh1A7
	zhv4+/ISy4JRBbIHG3AD6wHiaD9NtYI0SzTTddZViDO7ookHjyyCpU7XLr+wcUBLa3n
	OCLleCM7uFVJtYIzFT1NAjsdFguuzJrf0T2KiMmI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646352085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7TW7lFZ2BDIWsSCzsTySsicC/pX+oPAne/9vp65sMC8=;
	b=lBtZh2omQOt8H9wYPJPMlWX1S9UY2wxlRMkNtOw/ydWwYVHkBBuTyD0gk9FoXE8T
	wO5VLBcMy8FVtb3Y+3hL452y12amhJ/6ZZvL0uRrijcS5Zvo6bn//OWpj0VFVyOpJtr
	ofmUCc562dQj1/uL8kb/vXxH1wZ09PQiSwm5LfJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f523b2f5d-a3a73c59-b4c4-4e2c-a8b4-8059f70fb5a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3375549e6c1dabb19fed4d502e1c78052cf10387ce8de32c4adce6b6c7b2f3f
Date: Fri, 4 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646352084

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008802568
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 15:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651766218;
	h=To:Subject:From:Message-Id:Date;
	bh=JRC76rg8mRh8ZqItz245qZNim3dJfiIMXyrPcylAKd8=;
	b=DKobyPRAsVDd5cDh39mL1LLKA4Ei9bSHvaj1MoF57Q5HuIUYxBg7voe7qCQJJK0k
	MciXTbD+j+cQW1Gh40NmaOzjaXoJTUWQ3nOWc8Oer6MKLdfeLQ3tAtxzb/UKi4KMl74
	YSG5is9cXLfNU1sJPMDzlq3cmef7YvEdFWN24wB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651766218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JRC76rg8mRh8ZqItz245qZNim3dJfiIMXyrPcylAKd8=;
	b=OhGiav8hp/BhhkYjDLboImnK+ejMM87FuZb8ckO5mC2CGXpm3aLSioC8nHhsYu/O
	eFnQZM7cQboxGcRYMtIRPwk+iILrKIYP0B2DgEgvGl5XntteP5WuAgdHjygSOE8t1Ax
	hshze5W7F93ZJd7Zs8k25ggOw9FrrTOaRt1BmWpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018094f04e33-8a26a07f-ce7b-4e54-945c-595d0d404f7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a06c890a7a83d52cb47fc29ace30d3fe01219068acd023c010a9542022777b69
Date: Thu, 5 May 2022 15:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651766218

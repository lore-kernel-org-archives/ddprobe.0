Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0238D4686
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 02:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652064298;
	h=To:Subject:From:Message-Id:Date;
	bh=ki5hcnd30ds8mtEAYiwHO6DHpPyxykCIUM8wn+onaiY=;
	b=AODObaGkJFA0F8HK3PRapfi7jj9CLfTLOdGTNKcJufmP+Tmj1XeJboSdZlXH0bDh
	01jR9qP9sKynOy+sEkqY3hmufY/h+p00IXI19ZXkevJIZfgOKWXrQnt0bRJFi0Y9GtG
	ZLgUE3d7OIxeAY7zKIa3vdHuIuyPhkgMaK4yh8OM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652064298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ki5hcnd30ds8mtEAYiwHO6DHpPyxykCIUM8wn+onaiY=;
	b=K/3Ndg0y/6/f7lXZzUXXssIHHKGsclk5IITwnxEWW2aLTGVamNPLH+dP9GbemCEg
	R5DOlYgAZalIPyOz6AgSL/GgsR0MjXA9kgp4+FX35VgBzrprvP7ZnAUqumF+2uLaCBh
	fqK9w0tgPKmTEHp3IZi7f53m1WJ2HIVIfob/U9tY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a6b4a57c-243bdb29-8db7-4693-82fb-3b45ddda0181-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b75c535991a07e0d555089318d60d22d540e1449fcba8b92ba9292d26bebf32
Date: Mon, 9 May 2022 02:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652064298

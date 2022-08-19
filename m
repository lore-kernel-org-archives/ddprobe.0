Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530074A09
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660936252;
	h=To:Subject:From:Message-Id:Date;
	bh=zm82mOezoP2dtMN0Q9dkUnee5bEenfMVFqIMV/VFBz0=;
	b=cALVm5JYAakJdm9QfA3xfooCNDdIi+qVQmVesM9moA/jKvURWV8hLpKN4tFQLsdM
	KojSqLQ82/rY+0dVStuCOL6NW9TknekxF8eDqxNrJJZq/shRiRyq0PBSfIMn4wZHBs5
	jc6JKaixVjY6NSR8kGGbezCjxMakVToJU26JBLhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660936252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zm82mOezoP2dtMN0Q9dkUnee5bEenfMVFqIMV/VFBz0=;
	b=QxG319cJF3TRIhafBp5B1lGDx60Sc9gcIOOgTrsq0rqBTxdWLow/Jjx7Rb32l4Sz
	vU5yn+jv5nAef9KAVK8Q4TpHPikw5bu5mOLVYI+az8COZeZNaVoHoPqABUtq9fC7vJ5
	rZK4BfQL+ySF0wUElM595enHh9wdtbb2Oq0+mf1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b783ecdd-6552c2e0-72d0-4a08-bd29-2e8591f8d086-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59c5fe180a398b024b05c60909d514e175dcafdcda5b870b9805fc6a3051aa33
Date: Fri, 19 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660936252

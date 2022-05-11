Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528DF3208
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 20:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652302139;
	h=To:Subject:From:Message-Id:Date;
	bh=Aq8nmncOYt049ZHm0guJhiT3xxJ9HUf/lbQFZlzW0l0=;
	b=Uw1CwIw9B0XHk2eZXN5u6VNj4gQsh+CWIKPJsdMUQpIz/ezsPsN4YUG2knN+CMA7
	iUZKSj2375JbT8CRJ/ZKdSe631Xz2dXxpPP84twjk5C/If1ZmTmvEfdXJQ5WJP1F93l
	cA0DfeCXnWlwFfHaUAWI9Zj4rnp3cTVntjj4ETZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652302139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Aq8nmncOYt049ZHm0guJhiT3xxJ9HUf/lbQFZlzW0l0=;
	b=fDTB1oFF1skqWgaCNlr9kvB9KPTMSt3Fan5scKS/59VP+gmC0v3UFhkNxsi0Kvf+
	HF7HxF9SzeUInBUI7MIeKTw1VdtzK+me5iTSj2nC8ehIQY/YUtUun+XhsUbZTtczmKi
	pmcGDc24b1pAMc4cyxv7Wst1I5aBuXLW4Qzg8GL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b4e1d074-d4ee568f-f043-4703-9839-3b78dba6c07b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11290efed24faee9421912ce9993da6f0c95244b634e7570a681e30175ef310c
Date: Wed, 11 May 2022 20:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652302139

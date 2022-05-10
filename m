Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FDC7B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 11:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652182499;
	h=To:Subject:From:Message-Id:Date;
	bh=kK5l3wBNItYY+67AH90+1HCMp7k5A7yKLtBj9+yyFpA=;
	b=h1Af/s5PJ/l0H7mmfRzpXO8N5xQC57Ujp3ZA35Q6kYBN1lfHmzvBjpS5x8sRlUTe
	rGKd+DKbcY2pGcSZsrefhl15AEbVMqoH9MzzvBhC4ogWrEqg9jdblhGVWP9n6dZusv/
	jQ1lZNS0AnN9tO9FRHQAztVT7u3JOeBC3LYpRTpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652182499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kK5l3wBNItYY+67AH90+1HCMp7k5A7yKLtBj9+yyFpA=;
	b=f4FgnErJ96JTCix7JTwYOrgwzLQ36HOz4+6RNoarx9YxIW7InEfMFAZk2UzuqDWr
	Pn1fcBtAPYYZmqnxu2naiaFRsDAYrNICrhT2VEAf5XPqYT/HHM06Qva+w4TKxeT8gYE
	ktobiaC6vSwOtjluk/M9UBJ+Ix0sj59D6fJkkijs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180adc03fb7-4977aec1-7936-47d7-9fde-44167707b88a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dfd53606f4cf3726aea046f39811a923c3e3169fe52fa9b4ba86dbc952f4f74
Date: Tue, 10 May 2022 11:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652182499

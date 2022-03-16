Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8600F290E
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647414085;
	h=To:Subject:From:Message-Id:Date;
	bh=SZJnXgBKs/JW7UYkPKqtmIWJTH1jfpjcmY4AqXiumhA=;
	b=hJz8PAJpPFWHzNTRjcltL/iQ6xzjeTH3WziBz4auisYIVI8mNTRxJXHu1kcSoCP+
	pS+dN5CbfAGq6f1p19IqiHTPOZ1yyWZV3eFFMOXkT8JcmxQOUS0MYMFK6OgQsIkgbdu
	Tkt4MURV+f1UvzQlliuxBY5Yvku6TQ6gb1YTeo30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647414085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SZJnXgBKs/JW7UYkPKqtmIWJTH1jfpjcmY4AqXiumhA=;
	b=Ne8WKpoHsp9+EJqJpqDqoti9ltpopSbr5Yz4ElESmJAPdgwbV7S/RBIK6AmsnYc3
	AU9c2q6K8IPCUS1US2rHkkUN5cABj4cxift+n2qmYXqK9KAhPqjANNq0uyYCGHTIMFR
	5YKvy3lP79/EVcjxHkbf4l/bHlfaYln9FkclNru4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f918804d7-2bee77d5-9d6b-4ff4-a51d-c7c9acaa6781-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0860c944227554b2388510126c69b6d5de5fa5cd0afe0a2860a0ed5ad70acd99
Date: Wed, 16 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647414084

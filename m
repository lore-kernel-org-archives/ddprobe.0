Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DEA2CA4
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 21:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651784698;
	h=To:Subject:From:Message-Id:Date;
	bh=Bt9Rfj2qjO4kWqPKgdCMLuZfacazLHOnNkn+1YQPAFE=;
	b=ZseByKY/IL1DfA01ZjAw5BrZHL0LHHn3QPj8Z0/hi7EPwoH2YL27GY6v8WGNRD8+
	s6SKMf8mDaPFDFRcXOdaTnUgfT/15qjkzhxf+tCB+qL2KFRXgJK0YL2eYq7lF/Hzjod
	LdV/kqMmFZUsK3E5IFk6kSc8OGnXnJ18C91UNX34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651784698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bt9Rfj2qjO4kWqPKgdCMLuZfacazLHOnNkn+1YQPAFE=;
	b=YnJ6Jt+LVXUT+NeNClb4Z/QwWRXFx3MN1m/wnIVvrSSQOMjOT8xGj2H6irKRs0If
	5yBbb4JfC7VqVN8PWp6r8ImSoU2e0qOP9J/oYfc2WwV+e0FHGnKOBn/LCSL6qo126D2
	S4CHtSTodcsWhB3uyVskoS/Vb7khJPQZACuvCerk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180960a4992-9dd84935-1020-4d5e-ba2e-de576b23fd1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64b729338cc1ba963fcb23683e298f1ffbe166d63ba97f4f7b18126ff213376e
Date: Thu, 5 May 2022 21:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651784698

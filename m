Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C0733C1
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 23:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651014898;
	h=To:Subject:From:Message-Id:Date;
	bh=YysbJ7V0aLvbz2OoAt6jvOOzcdwLOwjIpzmF+pvx/+A=;
	b=hzW+OFMd6dxzjqZo8QExQSqEIKHIVPqIDVnZn6l3cZjQuVja5u716+wlo7hI7AEZ
	wB/NOPqFQSXsCDLv/ss+F97oNkOdvuprpibYvydlQ7RP+T8ac2DXtkwccr/DuwuHUiX
	2uU1GCnS7WDVfG92KY3EnZLT590A7ac9YIhqDiZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651014898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YysbJ7V0aLvbz2OoAt6jvOOzcdwLOwjIpzmF+pvx/+A=;
	b=cHySEuuGVwmMkn+n1NRZZk3zDNwGmoXv1tx0oM/Km9eGfruz6rM0tMTlbKgwe8aA
	duU/teJIKWZAmeZT4eE56zwspSJ9AAxO5qZgVQP9iy19/1MiDw8i+tH/E/iCk07vjXH
	sGHa/iKqIz/GHYw1qCbgAjKEtDz3yR+xF1ICsNV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180682812e4-da937684-8fc9-44c3-b441-872d92ee439a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 046e0403107bc1e597c549fbb576ddf880785bf3ace72c11f39557d2d72052fb
Date: Tue, 26 Apr 2022 23:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651014898

Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202937E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 04:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647144084;
	h=To:Subject:From:Message-Id:Date;
	bh=vQcAUBriU59ws7t6Gi/iiJLu7oB/y0YkK8oNzThOiLI=;
	b=mwyUa/bqPDE+9yUREzp9yaK74QHtFOsn+lQwD+Flt4P9kslZsxhpnkA5BI4DZ6Z1
	/uuxNf4oUW9oL07eK+QzP9o1Qvs1JY+XB5SQkL0UnHWRAYp9q8MO3uOMDoeF7QAMBtD
	dG1Pmiefmj2IETSHnI8ReqEp/+E2FE9Cwvw+UvCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647144084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vQcAUBriU59ws7t6Gi/iiJLu7oB/y0YkK8oNzThOiLI=;
	b=L5GAPeDkHAlWBIQI+HzZMra8AN5D3qCMqo9bujQDZKTwlFc7M7mftifec8HOGc1/
	anqzDBZeR7z3QS7TbVLG5+LgCK2ID/VzcwUOTn94GxQfJEcz50QnWcZ8dVZkRMsEFBF
	0FIh8S26Ii3sJwoKddj5uchPoSyXPsfot2RIk02g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8170252f-0656aef1-d7e2-4345-a515-4a3783b7ebed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec4ba30c9be057263408fc02a7a8ba0fd6e955b6aca35e266b1abdcbf0b69023
Date: Sun, 13 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647144084

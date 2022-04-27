Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DED67B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 10:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651053898;
	h=To:Subject:From:Message-Id:Date;
	bh=XwEnAmXdRqF4iGjgK6f/3IK+Ky7VjsLK3Et9PB7KB7M=;
	b=Y9fEwGDODQxy49jRZ5izYIwjWFbOM4SRqTc9YAZ78iez2RnAprxO1RIvL6NJo/Bf
	oJa+0qNjF5pOWtNYMy8wXDL4vfuqIwIaRoGewXhxl7Erszg9TB8ZnZv8wNXYuhwu20q
	2m9Va6kExyaL5GisLfqZHCtDR51T9lOCUuTWFZeM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651053898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XwEnAmXdRqF4iGjgK6f/3IK+Ky7VjsLK3Et9PB7KB7M=;
	b=EOMVWTJaFrOw99/H16807YBjttMjLPFNZGq0uvoxCy7ypenocU8qouUaz4wTOEIc
	fCz+tI13tNUGsot7xVXb+xK1GC46qwntTkPnouXLyYvsjA3Ka3RlE7saWZ8eP/Rkdis
	9P9ujmeakYuAt17PrsA0wq2FGc9n60T8/RbB7IZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a7b2a2b-7e3e6502-e626-465d-9ea9-b946d1a60c93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb2e54a07efaf593bf527fd51e7c78ff9b243699a9206d12b066b8d607d6e1c3
Date: Wed, 27 Apr 2022 10:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651053898

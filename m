Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873AA5127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646859084;
	h=To:Subject:From:Message-Id:Date;
	bh=AOPTZtJQUac6fR6tjQ1fdwHGy+txCocK9/hBoYZS9H8=;
	b=Itv7weOHmwnKE1/iYzDuBF9ETNvZEL/uRMf/PqygBfEgeVyFSU2Ut2+jBvV/wb4d
	t/Hyzmj3DwGrwk3Wj028PJ3OYgqTyHKdtJoCKJpNZ44fHTuRzdaFs7cSzVdQY07L0rj
	TJSkZaBVxYa9PmoKLaNrleXo5u4uXREATgJ2+C1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646859084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AOPTZtJQUac6fR6tjQ1fdwHGy+txCocK9/hBoYZS9H8=;
	b=UliWCOjmr4hc57YsMd0ZvEuqtsYULkFr8ULWHnT98H+QHYa3XdtHmI4wpj6pstfd
	yEzHe5EJTpJQ+HzwtbrpRRXq43yXtCVrWrrLId7I4+q7skkUEm/1JKE2cPmXaK9WAej
	H4owAHAHIhhe3AqCAfiAJ2YLYjewh0ObTv5V3lsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f707363da-d2211ef1-0bd6-403f-a05f-1978d9551222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f549b524a57b694a4498ebc320c24237b56cc4481476336d460ff37d9df20b8b
Date: Wed, 9 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646859084

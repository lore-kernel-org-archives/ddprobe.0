Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2545C23CD
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 07:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650611398;
	h=To:Subject:From:Message-Id:Date;
	bh=UKWHzJI6S1aglkgUwoNmpZZ3iaK8RyslrVeRBQfOU0w=;
	b=W/+8HEZEJyQxiqBYXTuQZoRiDsuHqKeGMXzLIQeywSraU8D9TuWv0YAayjoy6c80
	n+9yEXrZo545Krb3yhlacoNSbwBT8pboe04O4Ky70+6auZmUFGfk3dlyOl+Ial6oG3y
	QLT9PxCPqizWNm1kcJhrXxdK4BKu8mzZdTpuXnKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650611398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UKWHzJI6S1aglkgUwoNmpZZ3iaK8RyslrVeRBQfOU0w=;
	b=V9HH9FD99bHmzQNcHvxXqVyBoU8tdA8qrhgxR433ZdKWQfctPAIoXS3g6Y5ZqCv5
	M8yfMIXMIltKCtJHoQupyWogF4xz8e48aAAuqUxdhPICZEG62S77ppPwtBDvzEXPOXW
	f3TMVuAWI0MUmSRpaG3cZVZ8svcCtNJwQW4KNpuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180501b26a0-ebeacebd-6ce3-4fdc-9e3e-40721cdb1447-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9ed294c0a009aa08698d95df93714da777b1a088fe598a4a296cd3cd750bae5
Date: Fri, 22 Apr 2022 07:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650611398

Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0036C1385
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 19:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650397198;
	h=To:Subject:From:Message-Id:Date;
	bh=v3RiYkcNmQVf1ejFdX07wfNf4xGZRiHgtFvqkwp3uiQ=;
	b=BNGKBqdnXZmZnIoQy6n4kl7FggwKY+CXfbn7NmsJdi7h3AxH0Z6hprFZ1ulxfGUq
	9tzbgTOxvJiztfUzowAOe9NT02d3AR1fbM0jJCtCFQO6s1SWSVBwWjO3FtZpYLRu7Rn
	ZK3f6lPjxv9ZZPE220641mKWD4TeQtkC8vnTJCVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650397198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v3RiYkcNmQVf1ejFdX07wfNf4xGZRiHgtFvqkwp3uiQ=;
	b=YNOvhShuHge6K3GssFMsXtyFGLzgahfZWvegNcUIWriXd7viV+c1an9RdgFJhRze
	GAGcCFrx579AaGCNSOhVD6jeQhsAxa0V+CMP97ll2KP0jzTlGeBtvsm6vw4i7aY5GTY
	R4JP03Qe0iubcWUtyA6QWkw0jzSPjsSyE9FKAIn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804356b7ce-eb04d2d2-4f9c-405f-a577-31e2b8f8f57d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee26e75a4f847cb6c8218d115992cb480d26ec1bd18a07bcd32ebdeb2c4e872
Date: Tue, 19 Apr 2022 19:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650397198

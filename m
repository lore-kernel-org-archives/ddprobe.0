Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B345C8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644876085;
	h=To:Subject:From:Message-Id:Date;
	bh=BCysJLk4qWrP33yui5zgegqBLD75oLm9RgXoJfLFe8s=;
	b=Ean5RlO1GO3Ds8LU+2DSaJG4VHC4U7C+hg6JVlNszMAlHLOxwm717Vz+HnMiLpXq
	Y8lmOUNZESN8mPpgH7ZzvaONZbhn4W/6z0FEmLftr2Usvn9N6oocCe1As1BtNRSy7oq
	FbtatcoEer4jwfgp3+MYlWTz64F7I/G/Rmdw/8mE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644876085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BCysJLk4qWrP33yui5zgegqBLD75oLm9RgXoJfLFe8s=;
	b=Oc7c/n7/5wat2a7hklOmG/hVoy3Df9w9mcq7syMnyOrtlW+fdGLA0oUrWt3nxErS
	S3m3lO+iI6Q+lzojmhK8swiQeh8IDXgjfRW2F4DuaLX/LSm6JV8hM9ZkkM+rzrkScS8
	L1cR7na5B7tK84IcslScBY7neLd9EUnUV9ZTv4j8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa41364f-68bcdb49-20c8-4695-b4dc-0036339d9434-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8ebc283e44584d0621dfca3a80fa3b511aee647b55318da1affe8ec39e54a2a
Date: Mon, 14 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644876084

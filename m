Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5F020EA
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 04:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650083098;
	h=To:Subject:From:Message-Id:Date;
	bh=gzGvWkmZT1dO2avw/dp/lhoMzyNs9B6gnk80jpjU9L4=;
	b=EmYoQMs6qtXDuk0jfVnJQX2LhdSMw9MdXEDqlbDZFvHtjkw0N5gzOdyc6EBeV9Lc
	HmAkOOXvepj1voys9gqwcAVQl3QJ4MJDgVFUDx/dDI5JPGjDjOljDkQINnXxDMkblZW
	aaDXsFhGPK0Qt/ANtwTJtweujkQbQPAvdANvwL60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650083098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gzGvWkmZT1dO2avw/dp/lhoMzyNs9B6gnk80jpjU9L4=;
	b=HobGKrH9iSrYZV1QpNPXNg4xx7YWZEUptUqLKuzMsGMdgSvvR9iS3gL3TzpiSYk2
	H6FTENWiAK6Ua6HNEyKaZBNy9sy0zjAdWInShCLiRB1RvaLu6Taj8WdK7oVfA95c5xN
	1mtF0o5Oe/6Oq4r+/84LPx/TIZlomogpFZReizWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180309def03-a278bfa4-346f-472e-82b7-6be4ae7e1679-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f8e9a662d60839db04f917b13db6e341563f178517454854121767856f391de
Date: Sat, 16 Apr 2022 04:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650083098

Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1168223A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 05:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654494239;
	h=To:Subject:From:Message-Id:Date;
	bh=Kj/Y541IB1PNKHtFEI8KVnruWfCh2TS+2ucuhYxXtzk=;
	b=Q+qWGul3aufYRrqYRjz6/fItvnh1Q2+Z6O7jO0clfsdQw4Od9PeJRUBnqcO80Q5s
	iluxbCigBm99nmjlxb5Tf0JYwsELKxXJO/f5tcEe8wWTqLSi7R/bUeh0zPJ8W+jgtHy
	/nZAMDfUE+VTODnMgUzG0MtPQVwF5DQM/NC7j+Pg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654494239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kj/Y541IB1PNKHtFEI8KVnruWfCh2TS+2ucuhYxXtzk=;
	b=GMlXKVvGXN8Nc8wYT5Y/cMPuSaTRROFOnivt6xLJu0DoRur495RG/kMezOL6ypGX
	NaVGuW/o3X/cxQgIn8ahIlI6zelkneJghqKHM5d92Zj15xj6u9IXKeCEU3Ze8G0FqTG
	Mf4FzIQvxTb5TIcMunHRxU4yY5z21SlJoqXIMpGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181378a99f9-985f3054-31a7-4822-aa12-7498c932069f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a420fa809230e1e5c8b5d979237ec9be0eef082e410a0f020eacb6c3a78151d6
Date: Mon, 6 Jun 2022 05:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654494239

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DD436A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 05:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652504819;
	h=To:Subject:From:Message-Id:Date;
	bh=XjVnALYAMbCiuuxhGbgsnCq93KlnS1s5ugY4v00jcN4=;
	b=jaMqr9BaZaNlWpqrw8SJ44gYJZ7iwGqvZiVtNAguaQ/Wl5O5H4+771EC/X9GgE4B
	4bzJhAZcKW4lErWrE9YtKCi0NyK6uf79hh7z8hWa3p2WDTvS2P0kw9756JqVwmz1fbu
	G8bJlgiSoRViN9JJxjUG+TvxpT7f2mdnFnz2bPOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652504819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XjVnALYAMbCiuuxhGbgsnCq93KlnS1s5ugY4v00jcN4=;
	b=OsiKNwGO8HRJib1OGZFgRamrGqLF5Q2lHoFRqni6o3qkp7XmmhVdM+XhheIYC3zC
	aev+Aeqz9hu4yomOxgYyTR4jRjZyHAM8tb8KJSTRmgd7HF3vLZaEtN4oPSdNrqF9aXr
	mN7VW2pASTarqCYEMZK2g1xSNjjRWZ8UZAM7JtTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c0f67626-787ef342-b32c-4a0b-b7d2-fe949a08db2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ef336d987619fbbb9b834b5872156ef26b6ddf5c1c4ac2b4be02d4444adcbe9
Date: Sat, 14 May 2022 05:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652504819

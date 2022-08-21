Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405637B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661110852;
	h=To:Subject:From:Message-Id:Date;
	bh=hXZZrlD6XKZEBbzos9jGxTfL9KQQhj251O6E4iu7ThA=;
	b=fuUzHyegNQbpd8Tu8WSxy9GQLdjC4Z8xN6aU03eVrbvRxmvMS8Fq7Gqu/0558O/s
	dWcaqHrVNQyDwepTWF+cAkEKfQ4gdzrXa1ddm+iVGoxVKQ5r9fLTigmYcZOjF///nk/
	Be6ByMa6JVIODipi/KyCXUT1b4hVfo/NNQs17AO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661110852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hXZZrlD6XKZEBbzos9jGxTfL9KQQhj251O6E4iu7ThA=;
	b=aeWqak2j7jygdF4k2brPhyCvFDCT4bT3CAZbvSH7No9F82NjmjJuXzfUuhKmvX+J
	/op58sanhImMOZ5ByE1dl89VWonfZdrRJDF6zCZ5zQCyuAKN3PnyfhnnFVoOsMh1iO5
	6hN9uMAKG9MA37awD4Cep01ynnDfUvEamRJkKotc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1ec1bf2-1043ef8d-36b0-4f02-a07a-a20a56b60954-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16df5163f8ceb2e22a42451cd279c3b1232bc7db84f93df27bb944ad38197df9
Date: Sun, 21 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661110852

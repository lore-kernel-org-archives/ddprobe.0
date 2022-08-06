Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89FCB6AA2
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659744052;
	h=To:Subject:From:Message-Id:Date;
	bh=rCaOZC2eAqUW3dz6O4G/dq5LwNvSJigb/Rvg82zHYNg=;
	b=UwW3ZQMVqTwcAwAD/n5nYRs6gyk5Aw8jmawezBvhGVxmjKtI16nx8cBfAdOr9DIL
	USwWzT0+2owv4KYc/KRJ2js3tHhkTLzNNh7+RyFOWFrrSUbDXZLH9ejG0rkVbo+ElLM
	fgLf95NSXbyUJowXTYlvHZ7ee8Imqib3IG8DBzGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659744052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rCaOZC2eAqUW3dz6O4G/dq5LwNvSJigb/Rvg82zHYNg=;
	b=ELRIVNzN+VJYgkxTrTjE0tyDTjQsZD8AKoJEmH7WnLvPYsSyr77i4fj0h2MCQrkb
	wT50IRI50ZGhnlhanOa8RN8e0c3PFOT5boj1YMl7wt98U3t9dNeIQxD+rZA7v6DUxxO
	ZO62Nv7AU6Wxn1DEuOpHhOMArZsg+E6aPYzZB8uE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270746595-da260ea9-071b-4d52-a94f-e3caf7325846-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e00ca3427eb46b28c8d5b02fcc29577964b68251c892f715055cccd4c2100e8
Date: Sat, 6 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659744052

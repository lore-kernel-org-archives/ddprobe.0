Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B28A7E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660401052;
	h=To:Subject:From:Message-Id:Date;
	bh=/D6BsmBg0hwp8uU7TATGwsLhwuR+4mJ0rgTCa1g91M8=;
	b=Hw6Mh7H5EbpARZisWqAJruLqPhPLvx/28LIuAhbGB7Yf7LQVsjZuzl5/0MyWars+
	1AquDBLllXi6rz7K18+BVwnLkpUqy+euuWgp+n2QX6KzHblH+Z4Qpc2Ohwl49TZ202q
	dyB0CW5ejyOp2QzHyI3MXmjshulkb07hVe6ctT94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660401052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/D6BsmBg0hwp8uU7TATGwsLhwuR+4mJ0rgTCa1g91M8=;
	b=MpF9LMlyzRKB3EiJCxuux5G72sAwTwtwA9QWVefLTEvIZDfH6n2uKIcX7kmpnkfE
	5q6YZO5kIhl6h8/FASWf6kkpW4YosZXfaJgEhFIxzEF98Bg/qHkB5CfY1uxAZhvnswu
	WAQ5Cd63e8IU1gOiHpNfv+AiqK5UJ09njlh4gk7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182979d6bb5-3d862a6c-2cf6-4e47-ab9f-2d4e9664d13f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73ff9fb5e38aa4c53cd3d6adb1f7ad7f61b2ea6046f7ed84b6a16b0d5ca9ff44
Date: Sat, 13 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660401052

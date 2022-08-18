Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCD715A9
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660818652;
	h=To:Subject:From:Message-Id:Date;
	bh=KDuhQMasAoLdi835R3RbAWI4KBnW1lcmDFG3HKvzYCM=;
	b=Z1oJtbo1f1GsVBjGd9QiL+eS6RNLF/vHz+LuYwbykHtH4aPN5AAkDY3cEXKe9Ag7
	de3hPEaS+4YmWWq6cXedMZ67Hl7Tz1LUjRcOF0MYahRFaeDk9ag6ExTfFFwXj08yW+v
	aV3VAWT8WOIIBBSp/P7IzXFbVvZLFK34gv8hbgBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660818652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KDuhQMasAoLdi835R3RbAWI4KBnW1lcmDFG3HKvzYCM=;
	b=UPduINsv4QULhrsh/sZDt7sqm49EoZ0g4ZR2K01/KBTAB5N1w4ryxiFYCgVj7s1c
	3AjvMSFiinH0NtUEh3/F3makFQAEEwg+OUjTXev4AXFgpgBj2fYtziIgpx6cjPm1OMb
	MQ+mBG4N5Bjw2+eRcNlTLvcprvvdkJxHoRz3vDZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0817d92-305da498-5c37-4f40-aa34-b8facb6e90f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0191caac48051dbc780ca6aadba2cc57b105d7af20bedc02267cd4b79c338618
Date: Thu, 18 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660818652

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059E27F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 00:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655425859;
	h=To:Subject:From:Message-Id:Date;
	bh=m3Yn2wX7ppM9tGgcosfc0BI5/Zb0NBMAs5vfxZt4ex4=;
	b=j8R7lIcnpfmak0Frs1UEcxpmjTDQAhb6Mg7EMzgU3B5zTZzcX07XCnVl9MNDg5F0
	qMkbibtTamoIWcvvN3XPgf8bVA7qgMyRrA5tBVjzh64BfGAct2QGS1hS1+BEE+ItRCT
	qe2RFWUN5/PpMh3VEzvl9hY+HaFhVn/KuvWb3wZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655425859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m3Yn2wX7ppM9tGgcosfc0BI5/Zb0NBMAs5vfxZt4ex4=;
	b=ZadSm/lhZgwMQ0K0gJgfPj9K6+6QVvLvTazh6h9cdiOIXLwNg4Sfj+JNrweFDMDD
	9x4n79RsJIem6vf1nYxm1gwjGOkdOViwZT3XvNtNZsjTaWP/rt+lMb4z7RhPbe0Hj3Q
	x5oa4/a1awwQFvNWsjVphdPH4tfzNa7UcC3npaoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f11fe98-bf918dbc-c0d5-406f-be98-a3c0c2cdf321-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90686caaecae4c63e436fc692cfe01412db14f1e9cebceb06862f18796241f3c
Date: Fri, 17 Jun 2022 00:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655425859

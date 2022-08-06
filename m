Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763FB10F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659765652;
	h=To:Subject:From:Message-Id:Date;
	bh=Dg2UatdVTvoyKmZyuNx3WJLHu9JpIGS3/XIV1PbpukQ=;
	b=QFy62zHhEPfYHuXHrq2oVcrG/SuAZtOtb+lqzJ6JQ0/DAgd8Rwns1SQ7eMHqW3ll
	O2YTwSGLSLZjlF1T3Gd8xi/bEe79Hr66smgqZtlOi+CzewhdncOjMXuq4hTbVWzyy2K
	WTBsCKkRX+qxqCPxEkcopMCXNvDvAIv1JD77zWMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659765652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dg2UatdVTvoyKmZyuNx3WJLHu9JpIGS3/XIV1PbpukQ=;
	b=QREfQViwIUOuFEpeKTTBarFm9o3tlnaYJWVtPhmKH1Lvs7N0WspySGsdsDBZfF74
	EhytOcxRsev9gnoqxcq722eZ5+3jISPAm+oZToMOlRrJg5exSLIUPzUM/CG8yvNc267
	Y/w3qeSbVIL/FSN5XHkG/P56LavnksjL7JUn7AgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271bdfc74-c7f73161-d82f-449a-b1cd-69882b07db07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9e5245bd2374f461d8c66c6b1acd1bb518c38e601d1fc8412c5d94371e2dead
Date: Sat, 6 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659765652

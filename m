Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17B036F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647906685;
	h=To:Subject:From:Message-Id:Date;
	bh=ouIC4x7LS1ATfubtVScaG5kAj7433MbD5T4UaIIcISI=;
	b=ku/H2WI2fNgmdbijcojAsGrSWTkTRmFZhy0ItaDu44mnBrtaQIpXZduqlTcKSrPX
	3oIpgswOGavmcqx09Jka9sSnWzXKa2TJp4/NvPlx9QDct6L8UUOV3+HS3TEEOIy7/jD
	pFRqNT7get0ksa/ko90y6hWQoJTCrlEr6inkeeE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647906685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ouIC4x7LS1ATfubtVScaG5kAj7433MbD5T4UaIIcISI=;
	b=EbVJiAoZvYRitSaToUAIArq4YJJic/zerua6G4bPIjiVD/uZKBh1K2D1BkMWdTHI
	gCmRXQVn6CI9dry8Jx/XZ6359EoVW2L9AeuVEEAoGOXo0Qgcfo3WVjXRTd5VsKVFgDc
	U7crdGLysCYVD0j9Yi2b0yr8xGHobr1V4FdprDMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faee47f3f-0d64ddd9-6469-4ba7-a26c-8cd181466504-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cad61e7dd75d43634135e3ee841947a6fad112d27460da213d035cf5c96565b
Date: Mon, 21 Mar 2022 23:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647906684

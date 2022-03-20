Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AF033D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647781285;
	h=To:Subject:From:Message-Id:Date;
	bh=8JMBB7yFlytfSrCEQbg1G9CJ0NAHPZGKmAkEpsj0FkU=;
	b=f447UoPFBB6lvwS3GZRUE8mYgTwvQGOveKv56EChtZYJoc1aRLJfYrcjUi2y9qY6
	4saZ+57PkUpIpbVRu9pggv34pkBatRaVMb/9sXXyr2y/Xmcqnz8HSBbyjVhCrCcQKNm
	4sFieYpCWalRRvfoVAO7cJe1rsHQDjD0sRv+dtsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647781285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8JMBB7yFlytfSrCEQbg1G9CJ0NAHPZGKmAkEpsj0FkU=;
	b=hZTT9ZCUaTkSOlgsguf50Qm2MyMv1BRENv3UBokI9N2jOHn1FreVE67maQm1NJxe
	6ArBTe85dddnJAOMZweOjAfkgD780tkXuVMiNQtiE1epYpq5f0tPGsr7LWTMBJ8emSq
	ceQxiRXEuJAWC/Ce4LVZ7n97fokEMbyHaTVCZ0NM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa76b0b9a-af33401a-4a6e-4f08-970f-a2dac603369f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1b5fc74a3c8ea9a8ff74c0e65c770c1f19306ee5305e3ecbc7058a9a1d9fb09
Date: Sun, 20 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647781284

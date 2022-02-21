Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F114C6149
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645407685;
	h=To:Subject:From:Message-Id:Date;
	bh=B/FEFUY03c7t3F8cU0I7EbG/4MOYJKdylMqFtEQ6hwI=;
	b=KXmlEFZXSOQFrVOEHpltmZfUMBmCoElUspX86/mo9JQSVZWc5Ba0ES9ZIXtyq9O3
	Gl//fZ3p5lOkW0Yr4edFw770VxGOfPJv+D7fnq8Xdf8EKHnI9Y8ZasMF70D0K5CgkBW
	tPHGyTnLfcMHJcrRVT/hL5ybWuF6kGjfEYnUO9fQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645407685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B/FEFUY03c7t3F8cU0I7EbG/4MOYJKdylMqFtEQ6hwI=;
	b=UqjWCZG359xmYvcmj95ZPM98GNIq7RQfYPGXBfZPzbeotyGAI6RtV51COW/YxwUG
	Cr41Mbig/g/RTc687jwUl4iSxQeM+nYWN/44e2kgkS+L3JeWZC/o+4gzTA+kSAd+Ro0
	j9aBb6QLbmaNfYr2ErWVtpcukBG2m3o3XAs2h+Hw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19f0c88b-fb9cfbf1-5417-4860-93a3-ca58cb706f76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5010ca98a4a5d1d7683cdc7702cc8379d9ebdfab0c8c2f1351cde1a70688a8ae
Date: Mon, 21 Feb 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645407684

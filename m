Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7267D7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646602584;
	h=To:Subject:From:Message-Id:Date;
	bh=4ufofRwmFFdz9DgNOxde5/Vw4g8j9Ac+R+bIxWdk/OE=;
	b=kWlhm4RQJVW0ADhsw+2YkPtFwMAEE/cj+TW/TxYXaM/5Hrc7UbVNTsj4bmrcQvfb
	JQY3P6jvgsZRrIFnpSEPn4Ecc3Lznv0m66d5TlNdgJxMdSpp/kIB88rQ045O5qRulMM
	HJlvuXKgXJpfX2snlWQq9Dvo6CE2z9R8Nu7NBiCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646602584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ufofRwmFFdz9DgNOxde5/Vw4g8j9Ac+R+bIxWdk/OE=;
	b=Y6Q4k7HRjW61WtawZ0DR42y+ulxCSGx2vi9qiNRgOl9XJcuvUDirhmyi0AUha2wt
	GxNtxYxE7IP32cN2gwg9aiu9BoYejA5LG/d8eAFG9mZVFUVBlJqeeH55U3u6mC3qvXE
	Vle5119P5Bcqps15EvQ1lXH0GqG4btDTrjLxYfrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f612982bb-a0cfb3aa-3dcc-4f63-bf43-3725e30d8eb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 699916f9ff12d6ae188cf066f0db86bfafa01970367f5c3aeab1d3d1510fb9b4
Date: Sun, 6 Mar 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646602584

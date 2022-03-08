Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED132F33
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646706685;
	h=To:Subject:From:Message-Id:Date;
	bh=osArjW8axBNfsXwljE3W25ONWhXHas0WM4+6zQT7m/U=;
	b=HaOELG18CULo6ssj6As7EEby06wfGxoQoJfhlCmmCzH5OI48pw27DkpDGSi+tC80
	jXJ2fsvZEGw+/wmFRf8gheOwjNoevnIiKVogtMuNlg7v8bNC4tAjTs9Fjc8zdfxvkWE
	XpIUcyjOLV73324eClOCWwKoizYkjgXlUu4bad44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646706685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=osArjW8axBNfsXwljE3W25ONWhXHas0WM4+6zQT7m/U=;
	b=dTAUrhFxqCt8UMp1oGarc3IMfaqXn2zChA4tEzT56m1kEjJsJ3bdeCGSc9EStrXq
	YGl1sto5wv5TzNmCPTnpX65+8Nwmr1HMvGlN5Rwax1x0MH9VUGe16rYzf4AcSN6Vi83
	lYExRCcsuPFVyrIIqBBTfetgxKq0A7kRase5Ja98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f675df3ca-cbe0aeff-2d86-4bf3-8873-536d303df899-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28ca3159d661da71abb5e239bc6d2e86296f4fa9d654af96244cb718f4ca0e75
Date: Tue, 8 Mar 2022 02:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646706684

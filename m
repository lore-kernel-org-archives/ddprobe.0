Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AF42119
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660325452;
	h=To:Subject:From:Message-Id:Date;
	bh=UZ547uCouo1fp5yboSSc9eunoLu8Ya0CokCDK0ji76o=;
	b=Cpmx1ueQufBS8jbIs6uVoKdRTH5K3psMfpo6JkNlavrVea2c9iSttjWlqQbm3rgb
	Zhl3dSeVkfseN4+8ww1h0NdD6i3VS8Nk9ifbxEo6Gnuj2thAVqF3u/Jj8WdP6c5LHM9
	qinF/9Of7/mqb+pbWlCR1w6mm6TLykrkjja12gs8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660325452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UZ547uCouo1fp5yboSSc9eunoLu8Ya0CokCDK0ji76o=;
	b=LR+s9PNBtdZrMrIE2YxjoFck5B8FfwXn10W/QucKwOV0IKidbMMI3fqbIftsupBg
	8MMnPvFhKFiCg8956d/FvdkUU4Wyrbt38G8LySgsXDpxjYEzTKAut/Ms3K4J2jx3mig
	3BuGeidEAqXjQ510beuPNJlUTLc8ADouhf4I1Gs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182931bdb35-1825d087-7cc0-41b4-8d78-289f50cdfee7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06cfd3b32f7ef7bdb2a22b6cfacb29fee4b015d9a2ff08e763ca95b716f20e9f
Date: Fri, 12 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660325452

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CC17A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656282412;
	h=To:Subject:From:Message-Id:Date;
	bh=0XTlavfMmJOAb9YJN1i6KVe8OO3BY0nH6tQm15xheH4=;
	b=JkebydyzrqVDILuJs81IRCWMnHFWEcKr/EjvirjH+Ok7flU5m9X62e7M3Oh03sRx
	3/uR+r5IgNliAfk5Ht4MuxsoyMQM//xcT6GDrtCZMW+vqiiCTcrJB4lbKC3yT2L1Gr7
	oq3WwaZfyKVoEaOOPQfvph3ySKwFJ16XOSFt38rI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656282412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0XTlavfMmJOAb9YJN1i6KVe8OO3BY0nH6tQm15xheH4=;
	b=Rzuzih1MDX0f6HH2nMRff8xYnMsXIA22ATjlkre/H31/PoQ3FRE4oN2lg1/oB7l4
	S8Pc7hGZzaj55l5QuoW0xivEkQeTpez3+Pm/DwSRpo7fh7ssBQQsFkRJ+/4XqeyDTGc
	LDbzMS/25sIQRgg+x50cw4VmoP1sOfg6LdfFgjtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a21ff502-a39c37c5-52d2-4479-ba4d-38432105cc59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b3631ea781ecb7609106414d141315be02b58f9ea250ef9ff6beaf47ef72b3d
Date: Sun, 26 Jun 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656282412

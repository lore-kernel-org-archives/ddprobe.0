Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297E5636
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 11:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654862339;
	h=To:Subject:From:Message-Id:Date;
	bh=5PVwvPzDZrL2Z5FwmE+a7CdW/5e/iXOWEvsSfC7RoNI=;
	b=ktupFR/ZsAC1bGxH9xo3S4TnwBE3jvCcoPmjUhET9c634thHpL8ZhmjVy3F5IBY/
	rxZV8/2PdCh3vT7kN/WqQKPWBzcxpk7zFPn8wbHF/NaoYuMui0pjXksMWk3MuKrKIBC
	M4BVga/UhC1E+rHORNZ7P6e8SGzxdMlmbYVu9gko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654862339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5PVwvPzDZrL2Z5FwmE+a7CdW/5e/iXOWEvsSfC7RoNI=;
	b=Y4NNl2qiggBWAjY8JjhlyiQItz2ynbbZJOY44tLGWDd257nhsKg7YCAeI5CFLZFu
	ICLoMgF9ZPw2YYZa7FiTlriSEvWav9D/CjTgjraKOI55qTW6ZfvYaHI7JOvl3rpUfym
	R6VN1mb7Pk5YpH9cDSRhwme7cxx8Vchrt0tj6Czg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d7b5c99-1f698654-cdd7-46b5-87e5-8b893d1c0cf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fce5e9c613311101c39863f21d844cf4900f91ac540fc04f3bd8bc03a3c5c782
Date: Fri, 10 Jun 2022 11:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654862339

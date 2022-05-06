Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9A833C4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 19:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651867138;
	h=To:Subject:From:Message-Id:Date;
	bh=3dn3cjC0gJN1AXHSwqkFelP+Viqome58fYSAq2eOVoo=;
	b=a8ntp3zng2h1rv/4HwqNIS1Y3o3SANh7/JnKyPC/GbkyVWqVFWEf+hnryyk6COPU
	fmwCWMaO0q3+O7BMvnQtoA7934hbbZHfaziaLZA7MCUtStwRgCU9NETmpIdVJqwFxuW
	QZ8STQaoBSEZ0caFa0qI0O4rxEZmVKCZLvo/8++4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651867138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3dn3cjC0gJN1AXHSwqkFelP+Viqome58fYSAq2eOVoo=;
	b=AEizG/SwH9nex4gk/ptu6Z7FcjE3wf4At+fEex71jDBHoMh87aqWdSfwUrbrKgnH
	26ibVoCEHYaxMny1OuxarSo8xAB+ezzbAaCf9gc8WgWf+MnkERQk4mZC+V+kehsD407
	FF25jkMtKvoIaY8zB4blHCS7Nr0kRJolm5T6zTXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809af4391e-40e720a7-b6f7-49b6-8511-609b22b79934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 183f072ef98dec0430dcdbec14282b033df10726c1409669fe5f98f9392c536d
Date: Fri, 6 May 2022 19:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651867138

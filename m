Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF3E2F24
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647855985;
	h=To:Subject:From:Message-Id:Date;
	bh=z13NvbkCC3Uksu6Pv4zgipH78423fNpACzpqzLt2NCo=;
	b=ijy+Mioo4OKvik7C6LvHhDV/ybhIf1jbn34hIRQVMuF7o0ejUe7ue/4KOlgMAz6a
	cWl02rUj0fcsn24h7HJ+zKH1WwBF6RGm9Jrvyi/cBh0GKiPul/LWUzGisLAaRadh9Li
	/atlb5b+H7yVIG+7wIutIR+qcPCeQ9InXoNc0/mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647855985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z13NvbkCC3Uksu6Pv4zgipH78423fNpACzpqzLt2NCo=;
	b=MlQa0ah8FgsdCfVu3Y+lG2DqrMI9Gd0vdJVwWZdk9Qb8nTh22GedUL6b7r15loSW
	e0t1n+Cqht9DD/tdp07YfWPRt0wdnXrdY8ZFNhm5JapRCz35aTvtTqRucbAWv08d38g
	HkrC50stPzGhJHoOEcg50zHZS2/YhZuXmevuzZu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabdee0df-e32aaf93-852d-4697-859b-2dd35f7149cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 648e75e97da9ed1da79264981fdea6b4a21cc0ad0e90f9fe4a10f0c51a9e2e1d
Date: Mon, 21 Mar 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647855984

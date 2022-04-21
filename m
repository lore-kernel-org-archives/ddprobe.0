Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF363D6D
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 23:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650583858;
	h=To:Subject:From:Message-Id:Date;
	bh=sf3bOyxpHsUlSgb1TwaPwSO4dIgnSZVRD0m7rO94k5Q=;
	b=S1ILyhFW2Zr0c/zJffOsKi4qToLos1m0nWhQhqTpIZTSSW8L+BYiGAUDc02XVeXs
	ilbJuRBm7OE8s0oEV0euvRw9nAM4D/o9bNF3NTCyeUaMaudrV+PAQEUrFTkqykRWIfw
	WZLL+EuFRviGrs3legEksP7bPfrFIoubDP0wyCSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650583858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sf3bOyxpHsUlSgb1TwaPwSO4dIgnSZVRD0m7rO94k5Q=;
	b=LYd+4WhCRFZ5+go7kb2Puj/tLBhqi0dx6/Nu6gyaPmcdLynGt+HtoRa8VsSndJlj
	HWfT0t2GYHX6aEEcI3NxhoB3IpinsPzi752v9YWbKj0nEMR6ex4uf/FSQajKM0IqF2K
	hgQewe5dt3vC/7bNvbWu7F0b3z4PzCvQ/p3RzCxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804e76ec81-534cbe4c-5d37-454c-9d46-46485e8fe38b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97998a3fff55a6256763cd3b335622d35557efde0749038a61fe257302d64809
Date: Thu, 21 Apr 2022 23:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650583858

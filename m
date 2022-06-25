Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF93C23C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656152212;
	h=To:Subject:From:Message-Id:Date;
	bh=U9F2MzOpWhP2n1sQx/wXuyIhDk7jmxIWoBQ7cZFmvlk=;
	b=ipAsEgUvtG4GmxtvIJDGvoxDyZ9SmrOPP5e8Yc2UHPs6dDKanuNKfo4OXn4Z7btH
	s1xs99EsruBF3rzEC2DoGri1MXc+j4/nS3VgsdYPq1tMwN+kitQN84iCr1Q3RPdYitH
	/ymNqcuRZ5rToh7HPehtm8gzjTJchzkz1ppDbWOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656152212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U9F2MzOpWhP2n1sQx/wXuyIhDk7jmxIWoBQ7cZFmvlk=;
	b=GUyAZLtAD2WmUrAA0OtKxF/A1Nt5eVCWNPgT9lBaAuLkNdwidMK2YedVLJvpoFv0
	A4qr1EAGw1XehLXXlmdBkXY9KcdpOMxZAfFsNTxUdLI/joVzoMkNN/AdzOSmNUOhF66
	lNRFXN+2k5uNUKTQU0rRxT/5aXqsuc1PL067qUIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a5d431f-3ec7611c-9bd7-4695-b9da-01e8959cf254-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 810f6b4a30d5e1a6380a30266608d63882410228d1be3bb536bce9ec8112af73
Date: Sat, 25 Jun 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656152212

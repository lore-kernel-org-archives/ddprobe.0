Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054C17C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 07:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654760279;
	h=To:Subject:From:Message-Id:Date;
	bh=bS3lk5nrC55ccApsTX9PnGYYEROhRavaKze4X2PM164=;
	b=C7nFiEnwGsc5X2y3WI1W4YUAfXRQuQBU/EhIsIcF1DaCKBOhZYZWWgJ+Fzhv1Ijb
	E4c3Nhy6elFpH2wm6D64hbsmqSkjlDxxUB5SwE0/l6t/k2emvZuNQP6BbKgJd83wrXW
	dD4OYHAIVAXO5jB10sNVybyCbxG7ueDX4DHXPh4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654760279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bS3lk5nrC55ccApsTX9PnGYYEROhRavaKze4X2PM164=;
	b=O6ZVMO5q09gHJJHoepbOb5/hTmo+lmzUXZXyAsQS01fu23NZsDB+eFCBEHPAYXTZ
	DY2oSdsRbMaUf/InxWVwTxuHtIbItSxueN9640hXhF1ZVdkO2+s6Qq0TayfLZ0zuetE
	qndwx0OSHsZhRA5ifR8bZ5T1fhm9cw9el1PR5Z98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147660d17-b0d5dca3-f745-425b-89e5-bed9cc15547a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c04b74211e7d32a2bbc464b015c7a325dda7e0854eb9162a58c0bc01563ec7aa
Date: Thu, 9 Jun 2022 07:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654760279

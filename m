Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0E14400
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659086453;
	h=To:Subject:From:Message-Id:Date;
	bh=riYqgobUrgSBUjtSAkhBJhntR6OWA1mcJGk3rxRLogs=;
	b=LZdgejWE+M8UigVI7K9KKcs1Z9dCtlsSDV+rfSzmkTDmcyUGb5pW8hi5tFxToSnP
	lfSewHXhNANMUDGVk0etBBxB6r8OaMtBh4c5IKkzT1tfPGTPjM2HnIk19fkSI5xL7NB
	/8lur9XPIhxF2F++wb5xCHf+Jedk8bIOdLA7m040=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659086453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=riYqgobUrgSBUjtSAkhBJhntR6OWA1mcJGk3rxRLogs=;
	b=egwfDenmBbK40iVDr8JmhPLCcOIsD6h6w2s8GAny1CUhcse1N+jwURFnmxN3j1TD
	4j6NR5byrKsHGNevCYT0hK9QLwb4FAtjmZVoDeulBvnpZ2+ppVIyCUz6pUG4tkHOifU
	ucdUFH7GQjVIVA9MOYt8O4kyMb283HtAfabQRLzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824942373f-d545932e-b4d3-4f65-bdf2-5faff51d4ca9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a4fa37a3fd8b00710cbdd90b57bc45d360dd4b61ca888e4e3d60cad372ed826
Date: Fri, 29 Jul 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659086452
